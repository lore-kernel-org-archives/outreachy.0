X-GM-THRID: 2073319964672
X-Received: by 10.180.13.98 with SMTP id g2mr387278wic.3.1424548769028;
        Sat, 21 Feb 2015 11:59:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.3 with SMTP id hg3ls297087wib.37.gmail; Sat, 21 Feb
 2015 11:59:28 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr426286wjb.6.1424548768889;
        Sat, 21 Feb 2015 11:59:28 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id i7si368415wif.0.2015.02.21.11.59.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:59:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id l18so18872087wgh.8
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-type
         :content-transfer-encoding;
        bh=fG7JLdrpOo2u9Ae53e5m9O/+8uxgTjaanYUSzOZJgcc=;
        b=YvbDFpQ1MRhgBtmjc3G2dMux9KP4gNicLLQrzaxzQJMjxVugPbg475nHYgtmzYXAnw
         pbkjDUMJtzaLUUmRPyZXkm48K0GSjeTjbPEbqVnQ5VTOUCo6T6shlbTU8nEC4bbZRZLs
         Z1PeQu0zGUcGf1/I2A0Xavi0tR7SD9E6/8CoiIbLE+KOMmCw/YlCUhF2L5UWd6snDfte
         pE9TnFRrly7eKzE/6pV2uBiTKf6DLSVE1al9414BP8ACQF1WDuEGMoX95EXbjYmTIS4Q
         V+zCmrWjbZwthvI+7D6AQKU0rC9hGVG4mp+WYgB/VdLAeJ8119tiwJ3OvRkW935yfhb6
         ptjA==
X-Received: by 10.181.8.103 with SMTP id dj7mr6467309wid.75.1424548768829;
        Sat, 21 Feb 2015 11:59:28 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id fm10sm8283015wib.7.2015.02.21.11.59.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 11:59:28 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 1/2] staging: arch: alpha: boot: tools: Deleted unnecessary space.
Date: Sat, 21 Feb 2015 21:59:10 +0200
Message-Id: <53355ae30a25f627bf8e23541dee6c2109f7fb17.1424548101.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424548101.git.gulsah.1004@gmail.com>
References: <cover.1424548101.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424548101.git.gulsah.1004@gmail.com>
References: <cover.1424548101.git.gulsah.1004@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch fixes "foo ** bar" should be "foo **bar" checkpatch.pl error in mkbb.c

Signed-off-by: Gülşah Köse <gulsah.1004@gmail.com>
---
 arch/alpha/boot/tools/mkbb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/alpha/boot/tools/mkbb.c b/arch/alpha/boot/tools/mkbb.c
index 1185778..05a9d24 100644
--- a/arch/alpha/boot/tools/mkbb.c
+++ b/arch/alpha/boot/tools/mkbb.c
@@ -82,7 +82,7 @@ typedef union __bootblock {
 #define	bootblock_label		__u1.__label
 #define bootblock_checksum	__u2.__checksum
 
-int main(int argc, char ** argv)
+int main(int argc, char **argv)
 {
     bootblock		bootblock_from_disk;
     bootblock		bootloader_image;
-- 
1.9.1


