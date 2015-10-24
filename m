X-GM-THRID: 6209264752387948544
X-Received: by 10.129.145.71 with SMTP id i68mr9214537ywg.1.1445707264985;
        Sat, 24 Oct 2015 10:21:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.202 with SMTP id f193ls226652ioe.60.gmail; Sat, 24 Oct
 2015 10:21:04 -0700 (PDT)
X-Received: by 10.107.160.8 with SMTP id j8mr9885044ioe.4.1445707264566;
        Sat, 24 Oct 2015 10:21:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si2830034pbb.0.2015.10.24.10.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 10:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so152568911pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 10:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ng7DBYvSJ0QQgCpRo5bYxBZbYb7jrmpK2T2aLlx4c+0=;
        b=ZO3MoTutCta7uykJT6jS4D/biEH6g4RUgR8rlqj1+PFf3hvQ7QvlTiktxYOusjhuqp
         HPssaPf5eBEM0oIFDmV01KDxwMEs8yT7Sf87fz5H3Se7uQ331ZaDVM/spTZBBTl/cqTW
         xtXVjNeB+1ftVrXiJpEvOF270U8eIudFVl2WtP4DwGzpQQHuEMkybyKeFruZJF0HEDyM
         LLP7JNL/4k3CGcE17bj5Rs4V46Qdv6mJG6w+N7AFmt9FuRsr9TkqqsiRi9LIKTuVprPm
         HmVNcNWG85gJlCQ4oVKnMutieea4xhKx2rJv/WhG0X6B8i4klj/uj3VoCXOI5Xp4OSzo
         piNw==
X-Received: by 10.68.100.228 with SMTP id fb4mr12338635pbb.25.1445707264404;
        Sat, 24 Oct 2015 10:21:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.180])
        by smtp.gmail.com with ESMTPSA id rc5sm25098856pbc.95.2015.10.24.10.21.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 24 Oct 2015 10:21:04 -0700 (PDT)
Date: Sat, 24 Oct 2015 22:51:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8192u: ieee80211: Do not export static
 function
Message-ID: <c6eea468132785a0866ed395c03ab09055fdbfbe.1445706942.git.amitoj1606@gmail.com>
References: <cover.1445706942.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445706942.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove the export symbol for static function.

The semantic patch used to find this is:

// <smpl>
@r@
type T;
identifier f;
@@

static T f (...) { ... }

@@
identifier r.f;
declarer name EXPORT_SYMBOL;
@@

-EXPORT_SYMBOL(f);
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index f2d09fe..30e11bb 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -417,7 +417,6 @@ static void ieee80211_send_probe_requests(struct ieee80211_device *ieee)
 		ieee80211_send_probe(ieee);
 	}
 }
-EXPORT_SYMBOL(ieee80211_send_probe_requests);
 
 /* this performs syncro scan blocking the caller until all channels
  * in the allowed channel map has been checked.
-- 
1.9.1


