X-GM-THRID: 6951081935014723584
X-Received: by 2002:a63:c042:: with SMTP id z2mr50860pgi.136.1618430796313;
        Wed, 14 Apr 2021 13:06:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls1797100pjq.3.gmail; Wed, 14
 Apr 2021 13:06:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzEV12hchnMUYHMsy2lpINKOX5pOl0cD6A6LZO5EOrzMahMCOAMZtLryI5tbjvdqTQAsm7O
X-Received: by 2002:a17:902:b68c:b029:e6:bb9f:7577 with SMTP id c12-20020a170902b68cb02900e6bb9f7577mr39340429pls.0.1618430795174;
        Wed, 14 Apr 2021 13:06:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618430795; cv=none;
        d=google.com; s=arc-20160816;
        b=SweWUO0A+wn61Y7GVquepL8aaIpskajKbFOFTd7EnGk2EI8ljKwS7spkh6yW9VvcCI
         3m37C1KAR+mXP6T778EeyIWGDjiocmmIFWA6qdKlQIrmZoRwZpfckB6NEpi5dmD+Zhda
         M1IR0zp0E03c2cvClrvbhhCVwjoRrrlBmhy+tyUvgaTUWNFhzxlrSQ7yeFt08cQGRVuP
         h9l61A/cRGXXJvrotWbGdKjMcr9l/kkdGIZsS+zBVd+F2wCYgU1qiYQwGMLceBLJiWZZ
         oh3DRc42XbhggDz0SKD0WkPT+8TRvJAWAO25nPOLqLCD6mrFmmZXvLKY/OCmR5ft+40J
         Pg2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=m0UeUUmEb7K7Z7h4WXWoXlRLopbNknxKD3h/0+w8pnI=;
        b=XmXYaF3zpQr5m2ashy1nLpxjufzcrHFMMvvmK1U/nDK2tBNtKAqcdxKmmhrKwSKVwQ
         XyhnMGp/6zg26IhqPrY13k6ommwBhNAmLpnP+ZXJHiVc+iYUqG2NxtATRhPihH0vto/n
         zdON3A/nDLVeXJoZm200DgbeLn9NBR/8OQdEQpE/8JnmEP4abEtjKgIkEiqMnxCOZ/Yi
         C2J9WqaxaeOHUjhLpAf9XzkNWp8fGBukqTT3kOh28e0um6VmyaOmcTY1JyKKFEC/NYhC
         DqOC6DhG33nuE65hNz28AMqj9u6kM2GS7S3rYctPub0EAR8hCni4nGg7Rc9XUIn8i33v
         f6VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id p18si33097pgi.3.2021.04.14.13.06.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 13:06:35 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: ke2KYbrfHvzoqEtFaz1jd3XBxHIqKbppuk1eXjeV9fPWijp6up4B9wxHNZqXZLXYtYpKgJYmAq
 BJ+MDkTeBwIg==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="258688941"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="scan'208";a="258688941"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 13:06:34 -0700
IronPort-SDR: /F/n8F7lMm7e3GOVharWdu5rWXP8oSpLWbns0yEtrIrJZjMsOoYOhObCXE3k+ZJHuJvBwiCMCE
 GPLVAO67U3gg==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="scan'208";a="532893966"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 13:06:32 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with ESMTP id 66643204F8;
	Wed, 14 Apr 2021 23:06:30 +0300 (EEST)
Date: Wed, 14 Apr 2021 23:06:30 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: ascordeiro <alinesantanacordeiro@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: media: atomisp: pci: Format multi-line comments
 according to coding-style in file atomisp_cmd.c
Message-ID: <20210414200630.GE3@paasikivi.fi.intel.com>
References: <20210414182755.GA2799@focaruja>
 <20210414183325.GD3@paasikivi.fi.intel.com>
 <fae832b2555f1d971b45fcdfe34952aa03a42e4d.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fae832b2555f1d971b45fcdfe34952aa03a42e4d.camel@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Apr 14, 2021 at 03:55:42PM -0300, ascordeiro wrote:
> Em qua, 2021-04-14 �s 21:33 +0300, Sakari Ailus escreveu:
> > Hi Aline,
> > 
> > Thanks for the patch.
> > 
> > On Wed, Apr 14, 2021 at 03:27:55PM -0300, Aline Santana Cordeiro
> > wrote:
> > > Format multi-line comments according to the coding-style.
> > > Issue detected by checkpatch.pl.
> > > 
> > > Signed-off-by: Aline Santana Cordeiro <
> > > alinesantanacordeiro@gmail.com>
> > > ---
> > > �drivers/staging/media/atomisp/pci/atomisp_cmd.c | 109
> > > ++++++++++++++----------
> > > �1 file changed, 65 insertions(+), 44 deletions(-)
> > > 
> > > diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> > > b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> > > index 592ea99..6113785 100644
> > > --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> > > +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> > > @@ -67,7 +67,8 @@
> > > � * At 15fps this means 133ms. We set the timeout a bit longer.
> > > � * Each flash driver is supposed to set its own timeout, but
> > > � * just in case someone else changed the timeout, we set it
> > > - * here to make sure we don't damage the flash hardware. */
> > > + * here to make sure we don't damage the flash hardware.
> > > + */
> > > �#define FLASH_TIMEOUT 800 /* ms */
> > > �
> > > �union host {
> > > @@ -562,7 +563,8 @@ irqreturn_t atomisp_isr(int irq, void *dev)
> > > ������������������������ * and driver needs to keep old
> > > sequence_temp value.
> > > ������������������������ * NOTE: There is assumption here that ISP
> > > will not
> > > ������������������������ * start processing next frame from sensor
> > > before old
> > > -����������������������� * one is completely done. */
> > > +����������������������� * one is completely done.
> > > +����������������������� */
> > > ������������������������if (atomic_read(&asd->sequence) ==
> > > atomic_read(
> > > ��������������������������������&asd->sequence_temp))
> > > ��������������������������������atomic_set(&asd->sequence_temp,
> > > @@ -1247,7 +1249,8 @@ void atomisp_buf_done(struct
> > > atomisp_sub_device *asd, int error,
> > > �
> > > ��������if (IS_ISP2401) {
> > > ����������������/* If there are no buffers queued then
> > 
> > This should begin with:
> > 
> > ����������������/*
> > ���������������� *
> > 
> > And the same for the rest. Apart from this the patch seems fine.
> > 
> Hi Sakari,
> 
> I'm going to send a v2 correcting all the multi-line comments that are
> not beginning like this.
> 
> Besides, there are single line comments with different styles, a few
> like this:
> 
> case 1:				/* comment */
> 
> and the other like this:
> 				/*
> case2:				 * comment
>  				 */
> 
> Should I standardize these ones to the first case?

The first one is preferred for multi-line comments. But please keep under
80 characters per line.

> 
> Thank you for yout attention,

You're welcome!

-- 
Kind regards,

Sakari Ailus

