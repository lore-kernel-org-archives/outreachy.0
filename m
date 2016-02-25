X-GM-THRID: 6255234161639948288
X-Received: by 10.50.154.2 with SMTP id vk2mr2727127igb.9.1456410196174;
        Thu, 25 Feb 2016 06:23:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.183.7 with SMTP id ei7ls215861igc.16.gmail; Thu, 25 Feb
 2016 06:23:15 -0800 (PST)
X-Received: by 10.66.148.4 with SMTP id to4mr39566880pab.8.1456410195892;
        Thu, 25 Feb 2016 06:23:15 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x236.google.com (mail-ig0-x236.google.com. [2607:f8b0:4001:c05::236])
        by gmr-mx.google.com with ESMTPS id c15si239259igm.1.2016.02.25.06.23.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:23:15 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::236 as permitted sender) client-ip=2607:f8b0:4001:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::236 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x236.google.com with SMTP id z8so14319242ige.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iReSO77uT5/FXwm4SdRke3EGfmBIToVgaY5MDe2hKwg=;
        b=Z0CipB8s5gMcyXF6eyqS77kxQ/LvBD7YGiCxLwQHsZnzPLVI4lF7qoISWJbQWLnRKm
         yJqPxsC7W0Uq/dN2ZoSQS/hZI5EbhLGhKf7JtqBvVSqKTpaQzxmk658YDGrOSXCZlL4q
         PfigCkh20Boifhxm+vWwYKbtvz2a+1waaaNoe916WjnAzZKNOvxrNxv8ujOEkxoOCarW
         3KVZ6Lg91NXir2f9iIhGFbnvScTSmY8D/jTcgESu1vbRosm7GkYdosRdTkpgrSIJx44+
         HNrcOpnJFvmsnm1h0nR5KVBmeFaoOBoCLOtBVCL1FYzYJo0PCcmJM3HXPaCghFzKJ/Oe
         nY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iReSO77uT5/FXwm4SdRke3EGfmBIToVgaY5MDe2hKwg=;
        b=kIKNQ1zN6vpVqEL63uyQeJ8z1U3HKrpINVP/MdONdPDA4fhbaRgxa28MT7RfObDWGe
         /hAJUNall7Jb5ynSd1ua+LiyTkdbLO4jgpc9GoF+izecy/G+fSt6hxO41bfTylRNKTqA
         xF3dRYzF2ZAaMiAQ82X6Q0tnM6DkpveUAu+IRQVw2tjccgnyaKYkVa6O+3xOT/qzp0J2
         7lCV0ebHr8TTKDZGSVIgpgUTdLWxAUdXB46v1W6muiqjGwYgIFlGdMcM/ud8XGj8+rLv
         2yhztt1EMAEmV8KG+gx1Rzt0QqkvQezku5z9b3sIaBZ177GmW/A23004Xb3SiHIl7KnL
         Wz3g==
X-Gm-Message-State: AG10YOTIvS8PstKK++L2YINzjNNJMSGeO6eGNFKRBcb6WipkDI9YTf9JB7DhFyhBQihvwg==
X-Received: by 10.50.124.42 with SMTP id mf10mr3253843igb.79.1456410195703;
        Thu, 25 Feb 2016 06:23:15 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id f14sm3307887ioi.20.2016.02.25.06.23.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:23:15 -0800 (PST)
Date: Thu, 25 Feb 2016 14:22:27 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: prism2mgmt.c: Drop void pointer cast
Message-ID: <20160225192227.GA7061@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers don't need to be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
| 
  ((T *)x)->f
| 
- (T *)
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wlan-ng/prism2mgmt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index 013a624..d8ed9a0 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -375,7 +375,7 @@ int prism2mgmt_scan_results(wlandevice_t *wlandev, void *msgp)
 
 	int count;
 
-	req = (struct p80211msg_dot11req_scan_results *) msgp;
+	req = msgp;
 
 	req->resultcode.status = P80211ENUM_msgitem_status_data_ok;
 
-- 
2.5.0


