X-GM-THRID: 325933072384
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a8b99699d21447fa,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.190.104 with SMTP id gp8mr253792pac.26.1424278345133;
        Wed, 18 Feb 2015 08:52:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.84 with SMTP id i78ls173551qgd.41.gmail; Wed, 18 Feb
 2015 08:52:24 -0800 (PST)
X-Received: by 10.236.30.41 with SMTP id j29mr234831yha.28.1424278344932;
        Wed, 18 Feb 2015 08:52:24 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com. [209.85.220.45])
        by gmr-mx.google.com with ESMTPS id pc4si2586189pac.0.2015.02.18.08.52.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 08:52:24 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.220.45 as permitted sender) client-ip=209.85.220.45;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.220.45 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so2425099pad.11
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 08:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=yjdqPkrlA6ugDnmHqH7oP0BsZifMchAUGwx7uOLY6iU=;
        b=yiNGksOAabLmzhv0eyEPfTf6BGGt6Z0fZ+j/dAaR0fj36JSHWSmf6CsMBfprwTzgtN
         CGacT+EgPhIRDvD/mfp2Chjf8hbohv94wK1BcL0gt8fkRfDv5DjjR+TzufEwLoAZs5rJ
         R1yyBK6AUxacfZ4uYKY651mp0e62rmC8+DCC26yFqvWw5CVOJP00SdlZYlmTcrYPdcVb
         IgWY+BihKlHgkPa4s3nfyfLl2Gxovakq1CEqGg0Wk5tioS07nbRLZVA+JfkR2H4+s912
         hXNTcGgSnc4L4NuRVzVWsqJNh86SrO/S7UIYCN/anG9KCzVbnhVrB4Rld55Nr6/Qva3u
         Xtzw==
X-Received: by 10.70.134.163 with SMTP id pl3mr120790pdb.45.1424278344718;
        Wed, 18 Feb 2015 08:52:24 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.95])
        by mx.google.com with ESMTPSA id pm12sm2744763pdb.75.2015.02.18.08.52.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 08:52:23 -0800 (PST)
Date: Wed, 18 Feb 2015 22:22:17 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] Staging: media: Using set_up timer
Message-ID: <cover.1424276915.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch-set introduces the use of function setup_timer
instead of structure assignments as it is the preferred
way to setup and set the timer. This change is done using
Coccinelle. Also, data value of setup_timer function is
changed here.


Vaishali Thakkar (2):
  Staging: media: lirc: Use setup_timer
  Staging: media: Change data value in setup_timer

 drivers/staging/media/lirc/lirc_sir.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

-- 
1.9.1


