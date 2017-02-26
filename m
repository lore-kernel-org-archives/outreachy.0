X-GM-THRID: 6391112880745349120
X-Received: by 10.157.15.137 with SMTP id d9mr4166265otd.71.1488113123483;
        Sun, 26 Feb 2017 04:45:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls120899ote.48.gmail; Sun, 26 Feb
 2017 04:45:23 -0800 (PST)
X-Received: by 10.13.203.131 with SMTP id n125mr4540197ywd.42.1488113123112;
        Sun, 26 Feb 2017 04:45:23 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si2331782pfa.4.2017.02.26.04.45.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 04:45:23 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so780824pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 04:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jGuwnSDi2SbPG+3ihNjRS35/QQLI/Iztir3vpcJaHv0=;
        b=RHqrCV2i0Rq4y8A/pjjCD5HesNt1I5SsDPLbJgVXAGHUJZWQYxc1x8Nnca7ZSMmUS4
         v55jl9BKS6wpZJA0jiea5Bb67tWNm6opb17gh+R53BsP3Ca4WIfe4SNQAKqoYWwsH8pJ
         Fp5aGvDtxftWTUdVRkLaA6x99Z+mhwgwoJtd/aAS3Zrlyz7ReFsmgOWspTTGe7+bixBX
         k9x5/7ZBNyrGJ1PhL4s21DnsLWNxvxwavEFDpn03rfP1HwurMa0lvceOmD2SykkAGUmA
         yttIwhlBeiczEib4OlaJCTHrT2hOE+Q84v6FnglyHOhK/J0yYVVecLabxDOHclXh4Mf2
         TmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jGuwnSDi2SbPG+3ihNjRS35/QQLI/Iztir3vpcJaHv0=;
        b=QkZSxGj1gyDQMQX+cW4IaAxtcTQNYUQNhuXLk7bCnoyrgUQu6b+enQvn7GQqhOz8EU
         W+D/3t7wzQufAtENIRHKeaqY8Dai0Ps4dS9D+Aoz4FNJs+nLmv04IS132OpOZQqCNdmM
         whLW2NwAEVOftdjsco658KnNo4ZH8SXascqOJYoOpePF5K5Tg/h+6FRe2LrEhWXE5yGz
         i06XO573FMkkISg5wIgKZADqbxHTyu7k2huYoCU1ultbPySBx/GuZ/I27eUy4ZQImfRW
         7Cg34Vy/jQm4hrd6K6fscnyYdJAjd1vPuxrSjx6Puf1wARCUQ9EPY7alz3wKyyrrPa9e
         RxOA==
X-Gm-Message-State: AMke39lh9wynI9MbMdyTXvZG4sBxcTo7OVcJMzdUi44pidvACzWw6YBbriYWGioeqoOykg==
X-Received: by 10.98.74.154 with SMTP id c26mr15059676pfj.73.1488113122882;
        Sun, 26 Feb 2017 04:45:22 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id z27sm24771429pfg.38.2017.02.26.04.45.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 04:45:22 -0800 (PST)
Message-ID: <58b2cde2.1bd1620a.a0538.5031@mx.google.com>
X-Google-Original-Message-ID: <20170226124518.GA17744@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 18:15:19 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] staging: sm750fb: Add braces around if statement.
References: <cover.1488112339.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488112339.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added braces around if statement. This patch fixes the following
checkpatch issue:

CHECK: braces {} should be used on all arms of this statement

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 10cf729..7948ca9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -16,9 +16,9 @@ logical_chip_type_t sm750_get_chip_type(void)
 
 void sm750_set_chip_type(unsigned short devId, u8 revId)
 {
-	if (devId == 0x718)
+	if (devId == 0x718) {
 		chip = SM718;
-	else if (devId == 0x750) {
+	} else if (devId == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
 		if (revId == SM750LE_REVISION_ID) {
-- 
2.9.3


