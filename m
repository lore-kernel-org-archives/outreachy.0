X-GM-THRID: 6471467521247543296
X-Received: by 10.99.56.85 with SMTP id h21mr117361pgn.56.1506756018779;
        Sat, 30 Sep 2017 00:20:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.134.10 with SMTP id x10ls2536952pfd.3.gmail; Sat, 30 Sep
 2017 00:20:18 -0700 (PDT)
X-Received: by 10.99.105.196 with SMTP id e187mr866444pgc.119.1506756018064;
        Sat, 30 Sep 2017 00:20:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506756018; cv=none;
        d=google.com; s=arc-20160816;
        b=JYnHmZ2tzaL3OkPs3Tn0JXlMg5XBKL3fvuYTjtxC8eyGlgARD3vHXuMTgeNQaxeKk/
         MD4yYTCQy4WHscrSJagJQO3RElcIf0YCWvdICmqpmn/bNaj5Ar0q54NHI7+R7vhdpovL
         rnTyEp5zVqJ8f9YHThcLGDZQ4DMvP3BQjpyiUyq9SYtgJpljsWEF1Nr9Ao//elrG6wyy
         WPZz0/Tx8VrpRMjhxzT/jYDFYuUZeXLMpgFZ1aNRwoM0pnLyFIgnb9nLfL+uDcmVR4da
         h+JYlYQpsmlUrBCa139JvIhAxtjvJCeLXQjwzeKpfadtAsnmm9CZ3HuB9UYpP8TUioHE
         t3xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=WWcr6h+bVsbQ/TN8ldT2HsBY6BQm7gZ6t1gLQPuaJYE=;
        b=MbCwx1rEheEg+gKRxA8/1vnfx0BZKgYCVrLvf+J/wiO1kpiyXP8E6X0sExmDr8eMBf
         kCn1UWRvNgig+a/K07axaBdJA0J1bUiddyr+3zYvVerGtnsBR6tA/R1AoxWSqpXtpzvG
         No577/CxpaC+HSeQoD/lvyVCvTzc8GVQLcdegLLWU3Q5DOx8gmmZJZsiCO9VTxkTP3Bl
         682bTiTkVLkM3428PjFmgZsm+CXqCe0LyTTGmlcFjjxn7qvRlThZBwNboYQPmNlcWLtg
         cf5QnSqq18Xa/9ArQQdmq22jhUMEKPJcsLx2j/1DBd399hdxeOAeOl08YeMNy7Xo3JRJ
         SECQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=evurG38d;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id l10si641998pfc.17.2017.09.30.00.20.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 00:20:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=evurG38d;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g65so1135520pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 00:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WWcr6h+bVsbQ/TN8ldT2HsBY6BQm7gZ6t1gLQPuaJYE=;
        b=evurG38dtvsPYNPPzEltGpfBEVVsJWJEYGJ5FrOMpdJH65lW2zTyG7EQbvyUUEjl58
         lJnt1dvM6ZRJeplCiHZDyeYgDe+8TJC7iXrAXAgXeDnJKbRVlmbtVsELMswO2uMiEmsx
         NEVMJiXlD/vnP7eoUDUFIjttH9LxfBdegv5NyrvPoZTyyqEXRFNts1hYJs9g7sBBgRdB
         ph4F4ZUil8sVpBMlyE5JxAcFqxZO9kbzTyOOLzhkb2vv7ud1LAtK0NhHKKkKBFjMv772
         QiZFCaEgYIOIvVcvt2GsBaej70hKqOEwrlDuqUjtd3LDB4XNHfOeXXUlmvQZqx+dTvLF
         W7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WWcr6h+bVsbQ/TN8ldT2HsBY6BQm7gZ6t1gLQPuaJYE=;
        b=W3gA1eFliwD+NESeNF+KEBfMDDDski42RgVPWlZaEoXmBanRaylu/mPNphSF2mX9VV
         ts9iYQ8N4DNs3Tre0RRE+WZI/hYpu6m3yzBEINj3rXM/YQ4hQUpq/V6zK0Ok2x2y4Dc+
         vefSN/AVEHqsUmaU5p9KyEJQowIIdKeDlQ8eL/Sw4j6ql1Gbkuuvx5yOBplqJHGOg70k
         kfb2CNHHOD2qdLhOI2SjF6mR7RhfRYX5Rrnb+xYad/VODEHpbah049OpZQ0NWIQdkjpc
         MRYjF6YXvn3bfM+hWTP76b51eKi25aAg50CQ/3ysMUWUTm89goQt7OYc8DghTKlX/KGB
         K7OQ==
X-Gm-Message-State: AHPjjUhFUvZO81UPQxXHWr1YPiET3Zlw468ag+o0rNYKJa0mpRqDBRr4
	yBC/DZjiHxEFfN8JLKdsXPE=
X-Google-Smtp-Source: AOwi7QDT4HYo3lxIdT7l5F8ofP/+DmtvxvYDpJ05B0opJP+uMSIloRAB42lyk10Q/QBUnQ5UydpvkQ==
X-Received: by 10.98.73.144 with SMTP id r16mr9670675pfi.314.1506756017842;
        Sat, 30 Sep 2017 00:20:17 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.6.85])
        by smtp.gmail.com with ESMTPSA id e13sm9326703pgt.14.2017.09.30.00.20.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 00:20:17 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 3/6] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Sat, 30 Sep 2017 12:50:12 +0530
Message-Id: <c5612ce863fb1094f102c04f6bbbd85a7f55edd1.1506755265.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506755265.git.srishtishar@gmail.com>
References: <cover.1506755265.git.srishtishar@gmail.com>

For variables of the type struct list_head* use list_entry to access
current list element instead of using container_of.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
@@

-container_of
+list_entry
  (l,...)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index f663e6c..71b1f8a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -198,7 +198,7 @@ struct wlan_network *rtw_find_network(struct __queue *scanned_queue, u8 *addr)
 	plist = phead->next;
 
 	while (plist != phead) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
 			break;
 		plist = plist->next;
@@ -223,7 +223,7 @@ void rtw_free_network_queue(struct adapter *padapter, u8 isfreeall)
 	plist = phead->next;
 
 	while (phead != plist) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 
 		plist = plist->next;
 
@@ -342,7 +342,7 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 	phead = get_list_head(scanned_queue);
 
 	for (plist = phead->next; plist != phead; plist = plist->next) {
-		pwlan = container_of(plist, struct wlan_network, list);
+		pwlan = list_entry(plist, struct wlan_network, list);
 
 		if (!pwlan->fixed) {
 			if (!oldest || time_after(oldest->last_scanned, pwlan->last_scanned))
@@ -421,7 +421,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 	plist = phead->next;
 
 	while (phead != plist) {
-		pnetwork	= container_of(plist, struct wlan_network, list);
+		pnetwork	= list_entry(plist, struct wlan_network, list);
 
 		if (is_same_network(&(pnetwork->network), target))
 			break;
-- 
2.7.4


