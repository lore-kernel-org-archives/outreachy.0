X-GM-THRID: 6397260265742663680
X-Received: by 10.99.53.12 with SMTP id c12mr17438397pga.11.1489478225579;
        Tue, 14 Mar 2017 00:57:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.235 with SMTP id f98ls7742044otf.16.gmail; Tue, 14 Mar
 2017 00:57:05 -0700 (PDT)
X-Received: by 10.200.45.138 with SMTP id p10mr5990000qta.17.1489478225094;
        Tue, 14 Mar 2017 00:57:05 -0700 (PDT)
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id 13si417525iti.0.2017.03.14.00.57.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 00:57:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v2E7uX56023705
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 Mar 2017 07:56:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v2E7uWQv019427
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 Mar 2017 07:56:33 GMT
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v2E7uWM6003378;
	Tue, 14 Mar 2017 07:56:32 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 14 Mar 2017 00:56:31 -0700
Date: Tue, 14 Mar 2017 10:56:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Gargi Sharma <gs051095@gmail.com>
Cc: Ivan Safonov <insafonov@gmail.com>, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, kernel-janitors@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: fix some inverted conditions
Message-ID: <20170314075619.GC6061@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

We converted these conditions from == NULL and != NULL but messed up
and inverted some.

Fixes: e31447f934d3 ("staging: rtl8188eu: Replace x==NULL by !x")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 6b1a758618cc..301085a459c9 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -524,7 +524,7 @@ static int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *
 	privacy = pnetwork->network.Privacy;
 
 	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
-		if (!rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen))
+		if (rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen))
 			return true;
 		else
 			return false;
@@ -1136,7 +1136,7 @@ static u8 search_max_mac_id(struct adapter *padapter)
 #if defined(CONFIG_88EU_AP_MODE)
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 		for (aid = (pstapriv->max_num_sta); aid > 0; aid--) {
-			if (!pstapriv->sta_aid[aid-1])
+			if (pstapriv->sta_aid[aid-1])
 				break;
 		}
 		mac_id = aid + 1;
@@ -1189,7 +1189,7 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 #endif
 	/* for AD-HOC mode */
 	psta = rtw_get_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (!psta) {
+	if (psta) {
 		/* the sta have been in sta_info_queue => do nothing */
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error: rtw_stassoc_event_callback: sta has been in sta_hash_queue\n"));
 		return; /* between drv has received this event before and  fw have not yet to set key to CAM_ENTRY) */
@@ -2085,7 +2085,7 @@ void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 
 	struct wlan_network *pnetwork;
 
-	if (!tgt_network)
+	if (tgt_network)
 		pnetwork = tgt_network;
 	else
 		pnetwork = &pmlmepriv->cur_network;

