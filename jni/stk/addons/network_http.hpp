//  SuperTuxKart - a fun racing game with go-kart
//  Copyright (C) 2010 Lucas Baudin
//                2011 Lucas Baudin, Joerg Henrichs
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

#ifndef HEADER_NETWORK_HTTP_HPP
#define HEADER_NETWORK_HTTP_HPP

#include <queue>
#include <pthread.h>
#include <string>
#include <vector>

#ifdef WIN32
#  include <winsock2.h>
#endif

#define NO_ADDONS

#ifndef NO_CURL
#include <curl/curl.h>
#endif

#include "addons/request.hpp"
#include "utils/synchronised.hpp"

class XMLNode;

/**
  * \ingroup addonsgroup
  */
class NetworkHttp
{
public:
    /** If stk has permission to access the internet (for news
     *  server etc).
     *  IPERM_NOT_ASKED: The user needs to be asked if he wants to 
     *                   grant permission
     *  IPERM_ALLOWED:   STK is allowed to access server.
     *  IPERM_NOT_ALLOWED: STK must not access external servers. */
    enum InternetPermission {IPERM_NOT_ASKED  =0,
                             IPERM_ALLOWED    =1,
                             IPERM_NOT_ALLOWED=2 };
private:

    /** The list of pointes to all requests. */
    Synchronised< std::priority_queue<Request*, 
                                      std::vector<Request*>, 
                                      Request::Compare >     >  m_all_requests;

    /** The current requested being worked on. */
    Request                  *m_current_request;

    /** A conditional variable to wake up the main loop. */
    pthread_cond_t            m_cond_request;

    /** Signal an abort in case that a download is still happening. */
    Synchronised<bool>        m_abort;

    /** Thread id of the thread running in this object. */
    Synchronised<pthread_t *> m_thread_id;

    /** The curl session. */
#ifndef NO_CURL
    CURL                     *m_curl_session;
#endif

    static void  *mainLoop(void *obj);
#ifndef NO_CURL
    CURLcode      init();
    CURLcode      loadAddonsList(const XMLNode *xml,
                                 const std::string &filename);
    CURLcode      downloadFileInternal(Request *request);
    CURLcode      reInit();
#endif
    static int    progressDownload(void *clientp, double dltotal, double dlnow,
                                   double ultotal, double ulnow);
    void          insertRequest(Request *request);
public:
                  NetworkHttp();
                 ~NetworkHttp();
    void          startNetworkThread();
    void          stopNetworkThread();
    void          insertReInit();
    Request      *downloadFileAsynchron(const std::string &url, 
                                        const std::string &save = "",
                                        int   priority = 1,
                                        bool  manage_memory=true);
    void          cancelAllDownloads();
};   // NetworkHttp

extern NetworkHttp *network_http;

#endif

