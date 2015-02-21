X-GM-THRID: 1775949053952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,865df144d3c0dc1c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.43.166 with SMTP id x6mr287455lal.3.1424524184391;
        Sat, 21 Feb 2015 05:09:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.134 with SMTP id dc6ls325762lad.87.gmail; Sat, 21 Feb
 2015 05:09:43 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr294697lbb.11.1424524183906;
        Sat, 21 Feb 2015 05:09:43 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id l8si500579wia.0.2015.02.21.05.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 05:09:43 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id w55so10211999wes.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 05:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=PnTEx0k/Lrl70zF+g1RzrrawPUA7YnbXPqURTI/CVbo=;
        b=05Kfxp0EgGHJ2lqFbyKI8KSj/uYsLyEHWEtiqpNiGw5aHZL0otj4ni2483WCwXbalk
         GqtSLjMhEkF+s4OX39n4Nv63qWFcYf37SlfiMjKiQj0ibADKodZVDSqYra8kxPQRh9zf
         MyMAsxttpgVK4YqJMvFQ+oFA1y1LkcJy07XoaMvwZmdsKyW4pw9ALCEfOQHI5DpDDpzb
         JQZp9O21qF7Voaf1SLqsDsRrATK0N3OSLpcoRtxamzeM/xYRbokRd3OTMQH961MamiHZ
         RKx48LVvxn4Kv9RlNsfUK+z65Tepdgkr4qA69SYQTFIAleLY+MirrOX4iFSso7XnBRhP
         UdTw==
X-Received: by 10.180.212.113 with SMTP id nj17mr4010957wic.54.1424524183819;
        Sat, 21 Feb 2015 05:09:43 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([85.107.58.248])
        by mx.google.com with ESMTPSA id s5sm11350925wia.1.2015.02.21.05.09.42
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 05:09:43 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: removed trailing whitespace in rtl8192u
Date: Sat, 21 Feb 2015 15:09:47 +0200
Message-Id: <1424524187-10105-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Removed all trailing whitespace in
"drivers/staging/rtl8192u/copying"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/rtl8192u/copying | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8192u/copying b/drivers/staging/rtl8192u/copying
index d60c31a..f2605ae 100644
--- a/drivers/staging/rtl8192u/copying
+++ b/drivers/staging/rtl8192u/copying
@@ -55,8 +55,7 @@ patent must be licensed for everyone's free use or not licensed at all.
 
   The precise terms and conditions for copying, distribution and
 modification follow.
-
-		    GNU GENERAL PUBLIC LICENSE
+		    GNU GENERAL PUBLIC LICENSE
    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
 
   0. This License applies to any program or other work which contains
@@ -110,8 +109,7 @@ above, provided that you also meet all of these conditions:
     License.  (Exception: if the Program itself is interactive but
     does not normally print such an announcement, your work based on
     the Program is not required to print an announcement.)
-
-These requirements apply to the modified work as a whole.  If
+These requirements apply to the modified work as a whole.  If
 identifiable sections of that work are not derived from the Program,
 and can be reasonably considered independent and separate works in
 themselves, then this License, and its terms, do not apply to those
@@ -168,8 +166,7 @@ access to copy from a designated place, then offering equivalent
 access to copy the source code from the same place counts as
 distribution of the source code, even though third parties are not
 compelled to copy the source along with the object code.
-
-  4. You may not copy, modify, sublicense, or distribute the Program
+  4. You may not copy, modify, sublicense, or distribute the Program
 except as expressly provided under this License.  Any attempt
 otherwise to copy, modify, sublicense or distribute the Program is
 void, and will automatically terminate your rights under this License.
@@ -225,8 +222,7 @@ impose that choice.
 
 This section is intended to make thoroughly clear what is believed to
 be a consequence of the rest of this License.
-
-  8. If the distribution and/or use of the Program is restricted in
+  8. If the distribution and/or use of the Program is restricted in
 certain countries either by patents or by copyrighted interfaces, the
 original copyright holder who places the Program under this License
 may add an explicit geographical distribution limitation excluding
@@ -278,8 +274,7 @@ PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGES.
 
 		     END OF TERMS AND CONDITIONS
-
-	    How to Apply These Terms to Your New Programs
+	    How to Apply These Terms to Your New Programs
 
   If you develop a new program, and you want it to be of the greatest
 possible use to the public, the best way to achieve this is to make it
-- 
1.8.3.2


