X-GM-THRID: 160604094464
X-Received: by 10.152.6.232 with SMTP id e8mr2441684laa.2.1424212302939;
        Tue, 17 Feb 2015 14:31:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.7 with SMTP id dg7ls15820wib.45.gmail; Tue, 17 Feb 2015
 14:31:42 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr1347916wib.7.1424212302623;
        Tue, 17 Feb 2015 14:31:42 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com. [74.125.82.177])
        by gmr-mx.google.com with ESMTPS id l8si6044746wia.0.2015.02.17.14.31.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 14:31:42 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.177 as permitted sender) client-ip=74.125.82.177;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.177 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f177.google.com with SMTP id w55so1251832wes.5
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 14:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=nAZexJg7znK7G40x9acfE2NU/pRiSWJjFmqgJc5zaAY=;
        b=RI0bFuuhhKSiSnq76TxJb0k6uvUT0UDHdU7z4XvmqLF4cCRuMc/vJVGU98o0yYQC7A
         NC2SbaQcmaO39OARDHqOXvTkQm3FvW4Fb2iOE//dn06ArG1RS7y+jdGpP4bFOYtjH+Dp
         cAvEz2OqzVYH9FvTpgsvNNC95JdX3W/P0R+AWK122BSKYzSljwvMo4WEMMgCSvaJnMSF
         v4jpvoT39/XNf5Sd+IsEGDxH7zOIbx7cNr2YoUhHIScbUUEFHB4TO+YYmqfLrnEIc/8y
         TtJythQHaGo51CV/6nlFMvoIkauvCAH5JBDyk1+sl3DmsVzrLNvgfC2LPL1j+Zp77OBf
         aFDw==
X-Received: by 10.180.76.133 with SMTP id k5mr61325878wiw.30.1424212302508;
        Tue, 17 Feb 2015 14:31:42 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.235.169])
        by mx.google.com with ESMTPSA id pp10sm29309555wjc.31.2015.02.17.14.31.41
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 14:31:41 -0800 (PST)
Date: Wed, 18 Feb 2015 00:31:38 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: fix spacing errors
Message-ID: <20150217223137.GA12898@localhost.localdomain>
References: <20150217174851.GA7053@localhost.localdomain>
 <54E393A7.3030402@gmail.com>
 <29889867.SyN9ErTGdA@wuerfel>
 <54E39957.5020106@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54E39957.5020106@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 17, 2015 at 02:41:11PM -0500, Jes Sorensen wrote:
> On 02/17/15 14:22, Arnd Bergmann wrote:
> > On Tuesday 17 February 2015 14:16:55 Jes Sorensen wrote:
> >> On 02/17/15 12:48, Aya Mahfouz wrote:
> >>> This patch fixes the following checkpatch.pl errors for
> >>> the file fb_bd663474.c:
> >>>
> >>> ERROR: space prohibited before that close parenthesis ')'
> >>> ERROR: space prohibited after that open parenthesis '('
> >>> ERROR: space required after that ','
> >>>
> >>> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> >>> ---
> >>> v1: I know that typically one patch should fix one type of
> >>> checkpatch.pl error/warning but given that they are all 
> >>> spacing issues, I merged them into one patch.
> >>>
> >>>  drivers/staging/fbtft/fb_bd663474.c | 100 ++++++++++++++++++------------------
> >>>  1 file changed, 50 insertions(+), 50 deletions(-)
> >>
> >> The patch looks good - your reasoning for merging the patch is sound too
> >> since you would otherwise have to modify the same lines 2-3 times.
> >>
> >> The only issue is that you shouldn't put comments below the
> >> signed-off-by line. The comment you added about merging the 3 rounds of
> >> changes into one is valid, but I would do that in a cover letter, if you
> >> don't feel that is relevant to go into the commit message.
> >> Using '--cover-letter' with git format-patch will generate that for you.
> > 

Hello Jes,
Thanks for letting me know. This is not my first time to apply for the
program and I guess I've picked up some habits from the mentors of the
previous round.

> > I usually recommend doing it exactly the way that Aya does here
> > when there is only one email, but use a cover letter only when
> > there are multiple patches in a series to which that comment applies.
> 
> I guess this is a question of taste then. I much prefer the cover letter
> as it's easier to notice and read, so I always recommend that.
> 
> A good example of the rules of Linux aren't always crystal clear :)
> 
> Jes
>
Thanks Arnd and Jes for this discussion. Looking forward to learning
from all the mentors of this round.

Kind Regards,
Aya Saif El-yazal Mahfouz

