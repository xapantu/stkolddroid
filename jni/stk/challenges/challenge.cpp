//  $Id: challenge.cpp 8749 2011-05-29 19:52:24Z auria $
//
//  SuperTuxKart - a fun racing game with go-kart
//  Copyright (C) 2008 Joerg Henrichs
//
//  This program is free software; you can redistribute it and/or
//  modify it under the terms of the GNU General Public License
//  as published by the Free Software Foundation; either version 3
//  of the License, or (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

#include "challenges/challenge.hpp"

#include <fstream>

#include "io/xml_node.hpp"
#include "karts/kart_properties_manager.hpp"
#include "karts/kart_properties.hpp"
#include "race/grand_prix_manager.hpp"
#include "race/race_manager.hpp"
#include "tracks/track.hpp"
#include "tracks/track_manager.hpp"
#include "utils/translation.hpp"
#include "utils/string_utils.hpp"

const irr::core::stringw Challenge::UnlockableFeature::getUnlockedMessage() const
{
    switch (m_type)
    {
        case UNLOCK_TRACK:
        {    // {} avoids compiler warning
            const Track* track = track_manager->getTrack(m_name);
            
            // shouldn't happen but let's avoid crashes as much as possible...
            if (track == NULL) return irr::core::stringw( L"????" );
            
            return _("New track '%s' now available", core::stringw(track->getName()));
            break;
        }
        case UNLOCK_MODE:
        {
            return _("New game mode '%s' now available", m_user_name);
        }
        case UNLOCK_GP:
        {
            const GrandPrixData* gp = grand_prix_manager->getGrandPrix(m_name);
            
            // shouldn't happen but let's avoid crashes as much as possible...
            if (gp == NULL) return irr::core::stringw( L"????" );
            
            const irr::core::stringw& gp_user_name = gp->getName();
            return _("New Grand Prix '%s' now available", gp_user_name);
        }
        case UNLOCK_DIFFICULTY:
        {
            return _("New difficulty '%s' now available", m_user_name);
        }
        case UNLOCK_KART:
        {
            const KartProperties* kp = 
                kart_properties_manager->getKart(m_name);
            
            // shouldn't happen but let's avoid crashes as much as possible...
            if (kp == NULL) return irr::core::stringw( L"????" );
            
            return _("New kart '%s' now available", core::stringw(kp->getName()));
        }
        default:
            assert(false);
            return L"";
    }   // switch
}   // UnlockableFeature::getUnlockedMessage

//-----------------------------------------------------------------------------
/** Sets that the given track will be unlocked if this challenge
 *  is unlocked. 
 *  \param track_name Name of the track to unlock.
 */
void Challenge::addUnlockTrackReward(const std::string &track_name)
{
    
    if (track_manager->getTrack(track_name) == NULL)
    {
        throw std::runtime_error(StringUtils::insertValues("Challenge refers to unknown track <%s>", track_name.c_str()));
    }
    
    UnlockableFeature feature;
    feature.m_name = track_name;
    feature.m_type = UNLOCK_TRACK;
    m_feature.push_back(feature);
}   // addUnlockTrackReward

//-----------------------------------------------------------------------------

void Challenge::addUnlockModeReward(const std::string &internal_mode_name,
                                    const irr::core::stringw &user_mode_name)
{    
    UnlockableFeature feature;
    feature.m_name = internal_mode_name;
    feature.m_type = UNLOCK_MODE;
    feature.m_user_name = user_mode_name;
    m_feature.push_back(feature);
}   // addUnlockModeReward

//-----------------------------------------------------------------------------
void Challenge::addUnlockGPReward(const std::string &gp_name)
{
    if (grand_prix_manager->getGrandPrix(gp_name) == NULL)
    {
        throw std::runtime_error(StringUtils::insertValues("Challenge refers to unknown Grand Prix <%s>", gp_name.c_str()));
    }
    
    UnlockableFeature feature;
    
    feature.m_name = gp_name.c_str();
    
    feature.m_type = UNLOCK_GP;
    m_feature.push_back(feature);
}   // addUnlockGPReward

//-----------------------------------------------------------------------------

void Challenge::addUnlockDifficultyReward(const std::string &internal_name, 
                                          const irr::core::stringw &user_name)
{
    UnlockableFeature feature;
    feature.m_name = internal_name;
    feature.m_type = UNLOCK_DIFFICULTY;
    feature.m_user_name = user_name;
    m_feature.push_back(feature);
}   // addUnlockDifficultyReward

//-----------------------------------------------------------------------------
void Challenge::addUnlockKartReward(const std::string &internal_name, 
                                    const irr::core::stringw &user_name)
{
    try
    {
        kart_properties_manager->getKartId(internal_name);
    }
    catch (std::exception& e)
    {
        (void)e;   // avoid compiler warning
        throw std::runtime_error(StringUtils::insertValues("Challenge refers to unknown kart <%s>", internal_name.c_str()));
    }
    
    UnlockableFeature feature;
    feature.m_name = internal_name;
    feature.m_type = UNLOCK_KART;
    feature.m_user_name = user_name;
    m_feature.push_back(feature);
}   // addUnlockKartReward

//-----------------------------------------------------------------------------
/** Loads the state for a challenge object (esp. m_state), and calls the
 *  virtual function loadAdditionalInfo for additional information
 */
void Challenge::load(const XMLNode* challengesNode)
{
    const XMLNode* node = challengesNode->getNode( getId() );
    if(node == NULL) return;
    
    // See if the challenge is solved (it's activated later from the
    // unlock_manager).
    bool finished=false;    
    node->get("solved", &finished);
    m_state = finished ? CH_SOLVED : CH_INACTIVE;

    if(!finished) loadAdditionalInfo(node);
}   // load

//-----------------------------------------------------------------------------
void Challenge::save(std::ofstream& writer)
{
    writer << "        <" << getId() << " solved=\"" 
           << (isSolved() ? "true" : "false") << "\"";
    if(!isSolved()) saveAdditionalInfo(writer);
    writer << " />\n";
}   // save
