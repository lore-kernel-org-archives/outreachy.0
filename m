X-GM-THRID: 6256308933706645504
X-Received: by 10.182.24.41 with SMTP id r9mr8688832obf.25.1456660435873;
        Sun, 28 Feb 2016 03:53:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.202 with SMTP id s71ls1127264ioi.85.gmail; Sun, 28 Feb
 2016 03:53:55 -0800 (PST)
X-Received: by 10.66.193.225 with SMTP id hr1mr8548405pac.34.1456660435555;
        Sun, 28 Feb 2016 03:53:55 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id 12si3024020pfb.1.2016.02.28.03.53.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 03:53:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id yy13so75932972pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 03:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ULJ+ygDfegsMUKv8KfQaeQwQ1yKehYfxG6kwI2vVHRQ=;
        b=rmkBLTMLoqA41OZ84AFk3p8os2kndslXEvPAxEd0Db6c58MunmfwdbRwyJvXkh0m5r
         b21cSMU3eQCO4FivVHfcQLXoVkxrQChYl3h/LnRhD3weOfdJBYgrq8J6xk5tR5F7c7E7
         55byvigK669fk6fXUw2SYdeJL0exUo9ZDxcyoiJHmlxh+bCS7nwy/r2TXh4DurJFa1Lv
         Sdj/yfdAKjPXdexxJb4jliwYv6SVR7AJYmeG3cznhHjQC96IrHE21/+oGpYjn/Le2WIN
         OFtIhXTrj8CuMEgY4p4to26ctycnJTzHMSJYojUuYr+R2N9fExbK0damuDjeHzx+EAbp
         aY5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ULJ+ygDfegsMUKv8KfQaeQwQ1yKehYfxG6kwI2vVHRQ=;
        b=JzGzBP3olNmK/acMrk1TJC/apvVv9mp7PMpLSjoPL/Jn9fPC9nLLsu50Au+EeII5zp
         FVNHrnkYaZ/Cflk5bvWhRWKS9uj4NxlemV6HaxTTJdAcnDxyCzoe4A/r3APhkgSOhUuL
         kS4f5G5zEp3pJ3S3AHuI3UNUOGsEyojWviKgXBdh4LRSw2NqPvbnXRF7lwZFDwU8mRte
         0kvN9G9eNCo8xI62lQATXRXiZ+VP9j2j2UOUn+Y2v4FOM1bfH0hBblxhCmI4ynwMn5oS
         Sv4JnHplVqHkPEonFZk2CAuMRJRqigBKur/bcDZOHSeoUZjXQDKjspfjDGvqb5jK7aUL
         T+/w==
X-Gm-Message-State: AD7BkJI7HiY3UqTt+ancYWUizvJ/24MAU6iQiupeeJYQcLMEgZIU3QgnAcz8UhmJep96bw==
X-Received: by 10.66.233.131 with SMTP id tw3mr14993022pac.89.1456660435399;
        Sun, 28 Feb 2016 03:53:55 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x1sm31043387pfi.42.2016.02.28.03.53.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 03:53:54 -0800 (PST)
Date: Sun, 28 Feb 2016 17:21:06 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Removed unused variables
Message-ID: <20160228115106.GA16477@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Variables pcgroup_encrypt_val,pccipher_group,pcwpa_version,
hold different values at different stages of the execution of
connect(), however they are not being used anywhere.
Hence, the unused variables have been removed.

This was done using Coccinelle.

@@ type T; identifier i; constant c; @@
-T i;
<... when != i
-i = c;
...>

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 378c350..d704823 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -665,9 +665,6 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 	u32 i;
 	u8 u8security = NO_ENCRYPT;
 	enum AUTHTYPE tenuAuth_type = ANY;
-	char *pcgroup_encrypt_val = NULL;
-	char *pccipher_group = NULL;
-	char *pcwpa_version = NULL;

 	struct wilc_priv *priv;
 	struct host_if_drv *pstrWFIDrv;
@@ -711,11 +708,8 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 	memset(priv->WILC_WFI_wep_key_len, 0, sizeof(priv->WILC_WFI_wep_key_len));

 	if (sme->crypto.cipher_group != NO_ENCRYPT) {
-		pcwpa_version = "Default";
 		if (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_WEP40) {
 			u8security = ENCRYPT_ENABLED | WEP;
-			pcgroup_encrypt_val = "WEP40";
-			pccipher_group = "WLAN_CIPHER_SUITE_WEP40";

 			priv->WILC_WFI_wep_key_len[sme->key_idx] = sme->key_len;
 			memcpy(priv->WILC_WFI_wep_key[sme->key_idx], sme->key, sme->key_len);
@@ -731,8 +725,6 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 						 sme->key_idx);
 		} else if (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_WEP104)   {
 			u8security = ENCRYPT_ENABLED | WEP | WEP_EXTENDED;
-			pcgroup_encrypt_val = "WEP104";
-			pccipher_group = "WLAN_CIPHER_SUITE_WEP104";

 			priv->WILC_WFI_wep_key_len[sme->key_idx] = sme->key_len;
 			memcpy(priv->WILC_WFI_wep_key[sme->key_idx], sme->key, sme->key_len);
@@ -749,25 +741,15 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 		} else if (sme->crypto.wpa_versions & NL80211_WPA_VERSION_2)   {
 			if (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_TKIP)	{
 				u8security = ENCRYPT_ENABLED | WPA2 | TKIP;
-				pcgroup_encrypt_val = "WPA2_TKIP";
-				pccipher_group = "TKIP";
 			} else {
 				u8security = ENCRYPT_ENABLED | WPA2 | AES;
-				pcgroup_encrypt_val = "WPA2_AES";
-				pccipher_group = "AES";
 			}
-			pcwpa_version = "WPA_VERSION_2";
 		} else if (sme->crypto.wpa_versions & NL80211_WPA_VERSION_1)   {
 			if (sme->crypto.cipher_group == WLAN_CIPHER_SUITE_TKIP)	{
 				u8security = ENCRYPT_ENABLED | WPA | TKIP;
-				pcgroup_encrypt_val = "WPA_TKIP";
-				pccipher_group = "TKIP";
 			} else {
 				u8security = ENCRYPT_ENABLED | WPA | AES;
-				pcgroup_encrypt_val = "WPA_AES";
-				pccipher_group = "AES";
 			}
-			pcwpa_version = "WPA_VERSION_1";

 		} else {
 			s32Error = -ENOTSUPP;
--
2.1.4


