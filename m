X-GM-THRID: 6208412714735239168
X-Received: by 10.13.204.132 with SMTP id o126mr11361485ywd.50.1445508728990;
        Thu, 22 Oct 2015 03:12:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.198 with SMTP id 64ls1395452qgb.52.gmail; Thu, 22 Oct
 2015 03:12:08 -0700 (PDT)
X-Received: by 10.129.71.195 with SMTP id u186mr11720771ywa.27.1445508728452;
        Thu, 22 Oct 2015 03:12:08 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id vy6si1583888pbc.1.2015.10.22.03.12.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 03:12:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id rc13so83118509pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 03:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HnHBLMR9GaxQ8IZs18oz3NHh5BW/trzTSDsDktL8iFA=;
        b=ImyDWzpCo3B4Njiz+TfBqXkrCj1/xt/aBWc598r3lXGtThWEMy73irbvuSTM7xZ2eL
         ter5B+0UM4pUlN6rKSdf0U86b2ZyrO2OT5hy5nRK0ujBA9qn82Qsj/qLegFDUUucaoHI
         oLMLnr6YJ2GyPJsKHDGMzGRCgrbxDM6bbdhFnzJ3bh5TGswIUu1IQK61lcDlIvna5X/B
         QsgKdJciiHFh2SriclRw91UDjjc2QhReVF9Bo//OvjgHh4PwDM3lxbRyv9ykTgQ+PjJC
         CBmkG8OUjWNw5RnW0ZPdEk9z/9IAwJdrqbpUueI8sSR/LAaVv5V4xTYp0Tuz46ja1uEH
         vNfw==
X-Received: by 10.68.98.227 with SMTP id el3mr16371244pbb.20.1445508728115;
        Thu, 22 Oct 2015 03:12:08 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id uc1sm13295170pab.20.2015.10.22.03.12.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 03:12:06 -0700 (PDT)
Date: Thu, 22 Oct 2015 15:41:58 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: coreconfigurator: Drop unneeded wrapper
 functions
Message-ID: <20151022101158.GA17223@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the wrapper functions get_address1, get_address2 and get_address3
as they are not required and replace their calls by suitable functions.
Semantic patch used:
@@
identifier f,g;
@@

*f(...) {
 g(...); }

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 38 ++++++++++-------------------
 1 file changed, 13 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 427adfd..38bc2c4 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -171,38 +171,26 @@ static inline u8 get_from_ds(u8 *header)
 	return ((header[1] & 0x02) >> 1);
 }
 
-/* This function extracts the MAC Address in 'address1' field of the MAC     */
-/* header and updates the MAC Address in the allocated 'addr' variable.      */
-static inline void get_address1(u8 *pu8msa, u8 *addr)
-{
-	memcpy(addr, pu8msa + 4, 6);
-}
-
-/* This function extracts the MAC Address in 'address2' field of the MAC     */
-/* header and updates the MAC Address in the allocated 'addr' variable.      */
-static inline void get_address2(u8 *pu8msa, u8 *addr)
-{
-	memcpy(addr, pu8msa + 10, 6);
-}
-
-/* This function extracts the MAC Address in 'address3' field of the MAC     */
-/* header and updates the MAC Address in the allocated 'addr' variable.      */
-static inline void get_address3(u8 *pu8msa, u8 *addr)
-{
-	memcpy(addr, pu8msa + 16, 6);
-}
-
 /* This function extracts the BSSID from the incoming WLAN packet based on   */
-/* the 'from ds' bit, and updates the MAC Address in the allocated 'addr'    */
+/* the 'from ds' bit, and updates the MAC Address in the allocated 'data'    */
 /* variable.                                                                 */
 static inline void get_BSSID(u8 *data, u8 *bssid)
 {
 	if (get_from_ds(data) == 1)
-		get_address2(data, bssid);
+		/* Extract the MAC Address in 'address2' field of the MAC */
+		/* header and update the MAC Address in the allocated 'data'
+		 * variable. */
+		memcpy(data, bssid + 10, 6);
 	else if (get_to_ds(data) == 1)
-		get_address1(data, bssid);
+		/* Extract the MAC Address in 'address1' field of the MAC */
+		/* header and update the MAC Address in the allocated 'data'
+		 * variable. */
+		memcpy(data, bssid + 4, 6);
 	else
-		get_address3(data, bssid);
+		/* Extract the MAC Address in 'address3' field of the MAC */
+		/* header and update the MAC Address in the allocated 'data'
+		 * variable. */
+		memcpy(data, bssid + 16, 6);
 }
 
 /* This function extracts the SSID from a beacon/probe response frame        */
-- 
2.1.0


