X-GM-THRID: 6212606407345176576
X-Received: by 10.66.146.73 with SMTP id ta9mr18907124pab.18.1446485148948;
        Mon, 02 Nov 2015 09:25:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.163 with SMTP id f32ls987913qgf.48.gmail; Mon, 02 Nov
 2015 09:25:48 -0800 (PST)
X-Received: by 10.140.179.69 with SMTP id z66mr6200287qhz.5.1446485148350;
        Mon, 02 Nov 2015 09:25:48 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id vy6si2142411pbc.1.2015.11.02.09.25.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:25:48 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so160730144pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 09:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2xUpoKjmQ2GGgUe06M/c9oUuu0n9W6RGWFq8IG+L1KY=;
        b=CLKy6m1X7atXfBE9qRkPlWZ3x/fzrwDaZFikRZCG5ekmGqgf5l94qXyEQ/QBkwQ/lF
         ipnU3EBw7zFR35kK3uxwDPPtoZqyKMg0P8eIs/oIqERL1YGQecL88p7tHNXuJqRXp7Ik
         oiPF5Q6A5vD0blKiVh3NHETZIDBCC501OMNoxQSzKdn/WseYgNrdPcfwlmvlJxfB8MIq
         x+pgNGSOCI5ZOMT4YXM6GFX7oW3DUM70H/38bA0Mr1d0hGn6XOH0/YjK0/KNLazVspYY
         +rNObBR9CaWJVHsCLlt7VD6dr0cChlnTFzXKn0K8dfpQ7alZCLdSH2LNbsRIJUhjQsr5
         p95A==
X-Received: by 10.66.153.139 with SMTP id vg11mr28335627pab.118.1446485148232;
        Mon, 02 Nov 2015 09:25:48 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id eg5sm25155504pac.30.2015.11.02.09.25.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 09:25:47 -0800 (PST)
Date: Mon, 2 Nov 2015 22:55:36 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: linux-crypto-adler: Drop wrapper function
Message-ID: <20151102172536.GA36255@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function __adler32() and replace its calls with the function
it wrapped.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/linux/linux-crypto-adler.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto-adler.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto-adler.c
index 5d8d8b7..db05727 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto-adler.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto-adler.c
@@ -37,11 +37,6 @@
 #define CHKSUM_BLOCK_SIZE	1
 #define CHKSUM_DIGEST_SIZE	4
 
-static u32 __adler32(u32 cksum, unsigned char const *p, size_t len)
-{
-	return zlib_adler32(cksum, p, len);
-}
-
 static int adler32_cra_init(struct crypto_tfm *tfm)
 {
 	u32 *key = crypto_tfm_ctx(tfm);
@@ -79,14 +74,14 @@ static int adler32_update(struct shash_desc *desc, const u8 *data,
 {
 	u32 *cksump = shash_desc_ctx(desc);
 
-	*cksump = __adler32(*cksump, data, len);
+	*cksump = zlib_adler32(*cksump, data, len);
 	return 0;
 }
 
 static int __adler32_finup(u32 *cksump, const u8 *data, unsigned int len,
 			   u8 *out)
 {
-	*(u32 *)out = __adler32(*cksump, data, len);
+	*(u32 *)out = zlib_adler32(*cksump, data, len);
 	return 0;
 }
 
-- 
2.1.0


