X-GM-THRID: 7021139911434567680
X-Received: by 2002:a17:90b:1d06:: with SMTP id on6mr7733738pjb.119.1634738995974;
        Wed, 20 Oct 2021 07:09:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:903:185:: with SMTP id z5ls1563685plg.9.gmail; Wed, 20
 Oct 2021 07:09:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4hewe3rdCq82OZUds8wGZkM2C/iTn4bbJVnAk+bdaYSGGbw+zvHikGWraIw21j5VV5dCZ
X-Received: by 2002:a17:90b:3b88:: with SMTP id pc8mr130664pjb.93.1634738994632;
        Wed, 20 Oct 2021 07:09:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634738994; cv=none;
        d=google.com; s=arc-20160816;
        b=j7wKC/4FF5iSqeuIWhoKXjODcLwS5a1/yevHXMdQ9/oeSKgJ/ylK/PJU5/IX0ytxN5
         b6ZSWhkg4G+lQemdaUNC4js52z0U/kDVko5GRY5tn/5l1S8l+1II5jw0xlAC//Lndqqm
         I90cNLwVi7UBX2cDdT8JOa7BNUKWdjFztnW8iPw3OkHNiqysCoAc7JbV0afJZqV+hpZR
         5k1GFXFR3XZutTQTQrvSZlgacGbIToerQEgRfFytgn4XpX09URyY06yDFZ/VH65+NqcN
         TNmc4WcXG99j8o8EhRvI91aDPVuHZqrz7xSAyeG9YxOEBatgEjQ6a+X4tlGFPKNi6ux3
         mPXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=TZL3vzswYdA/q1ZbDvgnh8eO8rqJM/n6x8NXNeq4j9c=;
        b=ZJGa0kjr1+6Jp+n7gMURTe+r3L/qQiGWoD4eDHCcNWYsRT2pOV6+8FLwFKMcQY4fxy
         GRvSYv38FlDxbuX85cbLyViVQ/AdJUPDZR9Gg1PeJz1uX0APeXxVdO3hbYDR5O3UAYIT
         zQ8s/Z37ywyYbGgJwICkqpF8zorCCzj7X0PiL3qrV+g/v5ImViGgE6jAiYKJ/wWQIikq
         L3hnnp+3s6pa7Jm6lT1ThBhQCccaUzQErISdLkN84ElcMx25vwObSXjs0mWsKxZt8GQI
         X7dJRWeyl6kHy161vgoKau/A8UckW8hHYvllDsAXmRmu8KTU+Hjm2mmcksuWFP1lvdi5
         ficA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.163 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0163.hostedemail.com. [216.40.44.163])
        by gmr-mx.google.com with ESMTPS id r14si189123pgv.3.2021.10.20.07.09.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 07:09:54 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.163 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.163;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.163 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf10.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 61572180AA4FF;
	Wed, 20 Oct 2021 14:09:53 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf10.hostedemail.com (Postfix) with ESMTPA id 3F9FA2351F8;
	Wed, 20 Oct 2021 14:09:52 +0000 (UTC)
Message-ID: <157ee66fd0e3304c238e7ad8123277892e0d1132.camel@perches.com>
Subject: Re: [PATCH] staging: vt6655: Rename `dwAL2230InitTable` array
From: Joe Perches <joe@perches.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>, 
	outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Wed, 20 Oct 2021 07:09:51 -0700
In-Reply-To: <16db455b46f130300b5c346160aa434616e4f6b4.camel@perches.com>
References: <20211020132811.417341-1-karolinadrobnik@gmail.com>
	 <16db455b46f130300b5c346160aa434616e4f6b4.camel@perches.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: 3F9FA2351F8
X-Spam-Status: No, score=-1.33
X-Stat-Signature: db47h45kcto3uyubc3dswmuqu1udcaas
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+7ZtfCGaoXFuHrrNFph+R13YjosvH3o3c=
X-HE-Tag: 1634738992-128745

On Wed, 2021-10-20 at 06:44 -0700, Joe Perches wrote:
> trivial suggestion:
> 
> > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> []
> > @@ -33,7 +33,7 @@
> >  #define SWITCH_CHANNEL_DELAY_AL7230 200 /* us */
> >  #define AL7230_PWR_IDX_LEN    64
> >  
> > -static const unsigned long dwAL2230InitTable[CB_AL2230_INIT_SEQ] = {
> > +static const unsigned long al2230_init_table[CB_AL2230_INIT_SEQ] = {
> >  	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
> >  	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
> >  	0x01A00200 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
> 
> In this file there are more than 100 uses of
> 
> 	(BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW
> 
> Maybe add a define for it and substitute the uses for the define.

Look at the code too.

It looks as if every use of IFRFbWriteEmbedded() has this added to
the 2nd argument and that the 2nd argument isn't used anywhere else.

Maybe remove it altogether and add it to IFRFbWriteEmbedded().

And it looks as if the + uses for these should logically be |

Something like:

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 0dae593c6944f..26803f6f9a27b 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -498,7 +498,8 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
        unsigned short ww;
        unsigned long dwValue;
 
-       VNSvOutPortD(iobase + MAC_REG_IFREGCTL, dwData);
+       VNSvOutPortD(iobase + MAC_REG_IFREGCTL,
+                    dwData | (BY_AL2230_REG_LEN << 3) | IFREGCTL_REGW);
 
        /* W_MAX_TIMEOUT is the timeout period */
        for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {



