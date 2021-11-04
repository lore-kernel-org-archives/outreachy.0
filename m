X-GM-THRID: 7025609319157596160
X-Received: by 2002:aca:1b07:: with SMTP id b7mr1124519oib.178.1636037066333;
        Thu, 04 Nov 2021 07:44:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:b6cc:: with SMTP id w12ls414878ooo.10.gmail; Thu, 04 Nov
 2021 07:44:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlFDmNxElqmKqlHN/+/raobf0LnzXCpPZ9T16EA848GZ8bMew/E3Hgsf9lVgMh5hdhBGUq
X-Received: by 2002:a4a:6f59:: with SMTP id i25mr3969210oof.78.1636037065528;
        Thu, 04 Nov 2021 07:44:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1636037065; cv=none;
        d=google.com; s=arc-20160816;
        b=SdvQB8imI+b/0ceB1Za0hbnataF9Fkk7OMojmZebg5qado1+1nHTTRbKjwyuGncTzi
         iZ735fXkB0SS+ulz+vbvKw9p21+LxE3HRoBGeSs7Xl2UXExh+T5y2lTlQrC4m1AC/AYF
         rTxQZW8W3Fr7DBAyP8zv/33+qxrbU+vXl9C1hyMz/kwOgaroUz2BafmefxFl90eQYzJ+
         DfkjyDVDG5HEp81d/b1LUSWrdtExKgXQDp/TOvGFQwdZUwDlQ0SiX+udFNKEOa3vyxci
         Dz7aO1kcDImnsiVJFBVjVZoqaNvaqm80cWRglhgg25vmyRyJByPu+W0lM/tqGl82lLM8
         Oh4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=BTZifAW+lPr1IuJrgsqFGismRvsdivCIKaaXnHNCJcc=;
        b=arFAF0nNvJaZOU5QIBO4ObwjDma/T+/7KiY3wK6ZS3XoTeWbj9xIIac/hX3QnPMyTX
         Ufkbh56pbnWTLLriWrYxCJ8nYdwfYATS18HWhqZt5x8MGmFPOH+EDWWM4GBTOj9uVSRx
         uEARHbA01tP4EzyYMRR0cH3cVk9mQXDZI78afc11OY/R3x7P8hemCJM06SP5rj1lJNs9
         Gm9S0zdnRtQD4ap1VFz1xaj0c40VO7LHnYL9ORRolNiCPpVoe96qe4rEPOqJNsmyVqA1
         gh/mtYNRYsnZP7L57I7XTcJsUCASN7p3vAi4NMOrujexQ6HHqSTlvwgAcQLqjaOK2sVb
         Y3pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.202 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0202.hostedemail.com. [216.40.44.202])
        by gmr-mx.google.com with ESMTPS id r42si309034otv.3.2021.11.04.07.44.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Nov 2021 07:44:25 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.202 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.202;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.202 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf17.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id B0279100E39D7;
	Thu,  4 Nov 2021 14:44:24 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf17.hostedemail.com (Postfix) with ESMTPA id 7FB8E27DD2E;
	Thu,  4 Nov 2021 14:44:23 +0000 (UTC)
Message-ID: <2fd61a94d8cacd2626364bd25eace6b141ad1766.camel@perches.com>
Subject: Re: [PATCH v2 2/8] staging: vt6655: Use incrementation in `idx`
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Karolina Drobnik
	 <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Thu, 04 Nov 2021 07:44:22 -0700
In-Reply-To: <20211104130002.GB2794@kadam>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
	 <c569952d92ba51f32679c2fd87fd48ad8e49e3fc.1635773680.git.karolinadrobnik@gmail.com>
	 <20211104130002.GB2794@kadam>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 7FB8E27DD2E
X-Spam-Status: No, score=-4.83
X-Stat-Signature: ep881gbq347uy7ahrk6xgk3dhyd6tu9d
X-Rspamd-Server: rspamout04
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX19ixAMsINbAfb1jxWtTpSMffg2+Q5qb+rg=
X-HE-Tag: 1636037063-692601

On Thu, 2021-11-04 at 16:00 +0300, Dan Carpenter wrote:
> On Mon, Nov 01, 2021 at 02:32:00PM +0000, Karolina Drobnik wrote:
> > Increment `idx` in a loop instead of adding the loop counter
> > `i` to do so. Thanks to this change, the cast to unsigned short
> > can be removed.
> > 
> > Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> > ---
> >  drivers/staging/vt6655/rf.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
[]
> > @@ -700,11 +700,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
> >  			return false;
> >  
> >  		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
> > -			MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_init_table[i]);
> > +			MACvSetMISCFifo(priv, idx++, al2230_init_table[i]);
> 
> Of course, idx is no longer a constant so declaring it as a variable
> makes sense here.  But maybe just do it in the same patch because the
> patch 1/1 doesn't make sense as a stand alone patch.
> 
> Also don't declare idx as an unsigned short.  It's better to declare it
> as a int so it just works like a normal number and you don't have to
> think about signedness bugs and wrapping and edge cases.

No, IMO it really should be a u16.
Look at the iowrite16() within the call to MACvSetMISCFifo.



