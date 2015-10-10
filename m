X-GM-THRID: 6204103069755506688
X-Received: by 10.180.189.49 with SMTP id gf17mr1112342wic.6.1444505314189;
        Sat, 10 Oct 2015 12:28:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.106 with SMTP id r10ls553944wiw.42.gmail; Sat, 10 Oct
 2015 12:28:33 -0700 (PDT)
X-Received: by 10.180.184.164 with SMTP id ev4mr1129231wic.3.1444505313842;
        Sat, 10 Oct 2015 12:28:33 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bh7si191833wib.1.2015.10.10.12.28.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 12:28:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id lk2so108420825wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 12:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=QUaLL0ex3gFldJvyZiZvbBX4wxDv1OUzcjm+Coea0Oc=;
        b=0as18bmGIk4+ee99g3WIjEfPIXRmQx3PhNLv7Ot+6OqOvQBmNFunu0zx+IYzaTkMht
         1wkP2+RnoAfBw0FxyTeRl+2VMWQ3U/LDjv/bMFEiaZbRa11zmq0BdMTyyflCxN2NBhkJ
         +hLUm2gYhELggbZYJlta6z8gTw75aw7RA0p46eag0t3+curty2EyacX9c2feJaaMT9Ux
         aEvEcx0SzsNXrtX8SM7BDejUSMlALuQBr8HedkOTvazhB3Nxv5NsOZYPZeVxxtuXkcwp
         qp3irajwwt7zgFocr4dNNXAwIyJa8r3SLdzFnHfNyXFibP+YT+1q3WPvEF4aclgYdOMI
         v/7Q==
X-Received: by 10.180.88.201 with SMTP id bi9mr5581891wib.21.1444505313766;
        Sat, 10 Oct 2015 12:28:33 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.153])
        by smtp.gmail.com with ESMTPSA id h7sm9673447wjz.7.2015.10.10.12.28.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 12:28:33 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 3/6] staging: rtl8192u: Move else to previous line
Date: Sat, 10 Oct 2015 22:27:45 +0300
Message-Id: <9c83fad185b0f6d2001c2771127ea7b9e3d62e1d.1444500823.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>

Fix 'else should follow close brace '}''
checkpatch error

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 87 ++++++++---------------
 1 file changed, 29 insertions(+), 58 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 75ca33c..0600e38 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -518,11 +518,9 @@ static bool AddReorderEntry(PRX_TS_RECORD pTS, PRX_REORDER_ENTRY pReorderEntry)
 	while (pList->next != &pTS->RxPendingPktList) {
 		if (SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum)) {
 			pList = pList->next;
-		}
-		else if (SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum)) {
+		} else if (SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum)) {
 			return false;
-		}
-		else {
+		} else {
 			break;
 		}
 	}
@@ -681,8 +679,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 				IEEE80211_DEBUG(IEEE80211_DL_REORDER,
 					 "Pkt insert into buffer!! IndicateSeq: %d, NewSeq: %d\n", pTS->RxIndicateSeq, SeqNum);
 			}
-		}
-		else {
+		} else {
 			/*
 			 * Packets are dropped if there is not enough reorder entries.
 			 * This part shall be modified!! We can just indicate all the
@@ -1008,8 +1005,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		if (is_duplicate_packet(ieee, hdr))
 		goto rx_dropped;
 
-	}
-	else {
+	} else {
 		PRX_TS_RECORD pRxTS = NULL;
 			//IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): QOS ENABLE AND RECEIVE QOS DATA , we will get Ts, tid:%d\n", __func__, tid);
 		if (GetTs(
@@ -1025,13 +1021,11 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 			    (frag == pRxTS->RxLastFragNum) &&
 			    (WLAN_GET_SEQ_SEQ(sc) == pRxTS->RxLastSeqNum)) {
 				goto rx_dropped;
-			}
-			else {
+			} else {
 				pRxTS->RxLastFragNum = frag;
 				pRxTS->RxLastSeqNum = WLAN_GET_SEQ_SEQ(sc);
 			}
-		}
-		else {
+		} else {
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "%s(): No TS!! Skip the check!!\n", __func__);
 			goto rx_dropped;
 		}
@@ -1335,8 +1329,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		kfree(rxb);
 		rxb = NULL;
 
-	}
-	else {
+	} else {
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): REORDER ENABLE AND PTS not NULL, and we will enter RxReorderIndicatePacket()\n", __func__);
 		RxReorderIndicatePacket(ieee, rxb, pTS, SeqNum);
 	}
@@ -1885,8 +1878,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[1] == 0x0c &&
 				info_element->data[2] == 0x43) {
 				network->ralink_cap_exist = true;
-			}
-			else
+			} else
 				network->ralink_cap_exist = false;
 			//added by amy for atheros AP
 			if ((info_element->len >= 3 &&
@@ -1899,8 +1891,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[2] == 0x74)) {
 				printk("========>%s(): athros AP is exist\n", __func__);
 				network->atheros_cap_exist = true;
-			}
-			else
+			} else
 				network->atheros_cap_exist = false;
 
 			if (info_element->len >= 3 &&
@@ -1908,8 +1899,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[1] == 0x40 &&
 				info_element->data[2] == 0x96) {
 				network->cisco_cap_exist = true;
-			}
-			else
+			} else
 				network->cisco_cap_exist = false;
 			//added by amy for LEAP of cisco
 			if (info_element->len > 4 &&
@@ -1921,8 +1911,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					memcpy(network->CcxRmState, &info_element[4], 2);
 					if (network->CcxRmState[0] != 0) {
 						network->bCcxRmEnable = true;
-					}
-					else
+					} else
 						network->bCcxRmEnable = false;
 					//
 					// CCXv4 Table 59-1 MBSSID Masks.
@@ -1933,12 +1922,10 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 						network->MBssidMask = 0xff << (network->MBssidMask);
 						cpMacAddr(network->MBssid, network->bssid);
 						network->MBssid[5] &= network->MBssidMask;
-					}
-					else {
+					} else {
 						network->bMBssidValid = false;
 					}
-				}
-				else {
+				} else {
 					network->bCcxRmEnable = false;
 				}
 			}
@@ -1950,8 +1937,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				if (info_element->len == 5) {
 					network->bWithCcxVerNum = true;
 					network->BssCcxVerNumber = info_element->data[4];
-				}
-				else {
+				} else {
 					network->bWithCcxVerNum = false;
 					network->BssCcxVerNumber = 0;
 				}
@@ -1982,8 +1968,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				// windows driver will update WMM parameters each beacon received once connected
 				// Linux driver is a bit different.
 				network->bssht.bdSupportHT = true;
-			}
-			else
+			} else
 				network->bssht.bdSupportHT = false;
 			break;
 
@@ -2012,12 +1997,10 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				if ((info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_MIC)	||
 					(info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_PK)) {
 					network->bCkipSupported = true;
-				}
-				else {
+				} else {
 					network->bCkipSupported = false;
 				}
-			}
-			else {
+			} else {
 				network->bWithAironetIE = false;
 				network->bCkipSupported = false;
 			}
@@ -2051,8 +2034,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 	if (!network->atheros_cap_exist && !network->broadcom_cap_exist &&
 		!network->cisco_cap_exist && !network->ralink_cap_exist && !network->bssht.bdRT2RTAggregation) {
 		network->unknown_cap_exist = true;
-	}
-	else {
+	} else {
 		network->unknown_cap_exist = false;
 	}
 	return 0;
@@ -2067,32 +2049,23 @@ static inline u8 ieee80211_SignalStrengthTranslate(
 	// Step 1. Scale mapping.
 	if (CurrSS >= 71 && CurrSS <= 100) {
 		RetSS = 90 + ((CurrSS - 70) / 3);
-	}
-	else if (CurrSS >= 41 && CurrSS <= 70) {
+	} else if (CurrSS >= 41 && CurrSS <= 70) {
 		RetSS = 78 + ((CurrSS - 40) / 3);
-	}
-	else if (CurrSS >= 31 && CurrSS <= 40) {
+	} else if (CurrSS >= 31 && CurrSS <= 40) {
 		RetSS = 66 + (CurrSS - 30);
-	}
-	else if (CurrSS >= 21 && CurrSS <= 30) {
+	} else if (CurrSS >= 21 && CurrSS <= 30) {
 		RetSS = 54 + (CurrSS - 20);
-	}
-	else if (CurrSS >= 5 && CurrSS <= 20) {
+	} else if (CurrSS >= 5 && CurrSS <= 20) {
 		RetSS = 42 + (((CurrSS - 5) * 2) / 3);
-	}
-	else if (CurrSS == 4) {
+	} else if (CurrSS == 4) {
 		RetSS = 36;
-	}
-	else if (CurrSS == 3) {
+	} else if (CurrSS == 3) {
 		RetSS = 27;
-	}
-	else if (CurrSS == 2) {
+	} else if (CurrSS == 2) {
 		RetSS = 18;
-	}
-	else if (CurrSS == 1) {
+	} else if (CurrSS == 1) {
 		RetSS = 9;
-	}
-	else {
+	} else {
 		RetSS = CurrSS;
 	}
 	//RT_TRACE(COMP_DBG, DBG_LOUD, ("##### After Mapping:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
@@ -2418,8 +2391,7 @@ static inline void ieee80211_process_probe_response(
 					return;
 				}
 			}
-		}
-		else {
+		} else {
 			// Case 1: Country code
 			if (IS_COUNTRY_IE_VALID(ieee)) {
 				if (!IsLegalChannel(ieee, network.channel)) {
@@ -2462,8 +2434,7 @@ static inline void ieee80211_process_probe_response(
 		if (is_beacon(beacon->header.frame_ctl)) {
 			if (ieee->state == IEEE80211_LINKED)
 				ieee->LinkDetectInfo.NumRecvBcnInPeriod++;
-		}
-		else //hidden AP
+		} else //hidden AP
 			network.flags = (~NETWORK_EMPTY_ESSID & network.flags)|(NETWORK_EMPTY_ESSID & ieee->current_network.flags);
 	}
 
-- 
1.9.1


