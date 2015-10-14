X-GM-THRID: 6205609650776178688
X-Received: by 10.129.157.18 with SMTP id u18mr4288970ywg.28.1444856253695;
        Wed, 14 Oct 2015 13:57:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.77 with SMTP id 71ls433450qgi.28.gmail; Wed, 14 Oct
 2015 13:57:33 -0700 (PDT)
X-Received: by 10.140.196.76 with SMTP id r73mr4231913qha.3.1444856253197;
        Wed, 14 Oct 2015 13:57:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si1117706pbb.0.2015.10.14.13.57.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 13:57:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id p3so16427629pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 13:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=tHSB+F7VCJQeKSAbTEnZ6Tk6nG/80dB84Sl4dFAZiz0=;
        b=g9pWDN1CMHuzAJ/qI+EjyrP7f1EznVCl76fevKRbazaE3zEVCOaGtFNMqdeTKr7/vU
         Mg2dp4YVwnCrc9t367lYVZ0H4V59OqNEFsDzjCtKuAObQ9qG9SOHae19zX+EDfgJa7ao
         l6pGa/u/aqpQdtKpbpoi+yeyH49CslzwH0tEno3p6SiJ6EEJ2hIui5zUbKgdsUVxE2ex
         eW5SZG/w3trccnvCy+PQ9iHfwllgv4hj7Nz7/rh2gl8iJvsmC313rcYpOUI9YFR11Jz/
         9pL3lOgfPxlQgn4ARjzAb3BXwhUBvsSOcqRJYZChIo0mjhBy/GiAIVBty/l/d2J4koqz
         yAeQ==
X-Received: by 10.68.190.170 with SMTP id gr10mr5546989pbc.91.1444856253034;
        Wed, 14 Oct 2015 13:57:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id dk2sm11295236pbd.57.2015.10.14.13.57.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 13:57:32 -0700 (PDT)
Date: Thu, 15 Oct 2015 02:27:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: speakup: speakup_audptr: Remove useless
 intialisation
Message-ID: <c2e8ce276edf3dcd2cb717400ab8397627c1f22a.1444855933.git.amitoj1606@gmail.com>
References: <cover.1444855933.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444855933.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/speakup/speakup_audptr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_audptr.c b/drivers/staging/speakup/speakup_audptr.c
index ea89e36..a9a6872 100644
--- a/drivers/staging/speakup/speakup_audptr.c
+++ b/drivers/staging/speakup/speakup_audptr.c
@@ -162,7 +162,7 @@ static void synth_version(struct spk_synth *synth)
 
 static int synth_probe(struct spk_synth *synth)
 {
-	int failed = 0;
+	int failed;
 
 	failed = spk_serial_synth_probe(synth);
 	if (failed == 0)
-- 
1.9.1


