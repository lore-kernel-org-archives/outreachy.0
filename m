X-GM-THRID: 6207450266150633472
X-Received: by 10.66.132.69 with SMTP id os5mr27781808pab.12.1445829166899;
        Sun, 25 Oct 2015 20:12:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.136 with SMTP id m8ls2777980qge.72.gmail; Sun, 25 Oct
 2015 20:12:46 -0700 (PDT)
X-Received: by 10.31.171.12 with SMTP id u12mr27936695vke.12.1445829166214;
        Sun, 25 Oct 2015 20:12:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id fa8si3332139pab.1.2015.10.25.20.12.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 20:12:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv9so181403240pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 20:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=pogHANkHgbcHpe+S2V4nvUH88pSeQECo+Hbvn7kd3ao=;
        b=abJzTzqIktFXjbefnpb/0AMkhLjUjvFIynB775Z7w1IynoRXIFHMEb+Wnt6U1KqCcc
         Zc6emuCHN+wOZQehrG3mI7JP55cuzHWMcvo3U+Dqrzr1vPTahXyCef6/H6jBExgeB/gg
         nssW20HEJbK68RBUJNlL9RPASnQLEkwopIZvauvprWfcjQTdINAUcVFAwIBqQrP8brIR
         p+B+hWZoPrh/eDhwbeufphSVSsimhLOfKy9jsPe8WQCI+qtsYHAJZa0qNmv9GWSErQiM
         M2/3hhmC+wSYBCPJmEQd5SpZ2ST5Q24NZQ1RX1qfL3VJa3W4IWqCYvhtssp5FA8n9iso
         OAQw==
X-Received: by 10.66.90.165 with SMTP id bx5mr19372845pab.87.1445829166059;
        Sun, 25 Oct 2015 20:12:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id qb7sm30970030pab.47.2015.10.25.20.12.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 25 Oct 2015 20:12:45 -0700 (PDT)
Date: Sun, 25 Oct 2015 20:12:44 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] staging: r8723au: use kernel
 preferred style for commenting
Message-ID: <20151026031243.GB2104@Ubuntu-D830>
References: <cover.1445402009.git.amsfield22@gmail.com>
 <2759bb6566b8295027e88324efb338b1e471a970.1445402009.git.amsfield22@gmail.com>
 <20151025024121.GB16589@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151025024121.GB16589@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Oct 24, 2015 at 07:41:21PM -0700, Greg KH wrote:
> On Tue, Oct 20, 2015 at 11:10:41PM -0700, Alison Schofield wrote:
> > Reworked comments per kernel coding style to improve readability.
> > 
> > Addresses checkpatch.pl:
> > 	WARNING: Block comments use * on subsequent lines
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/rtl8723au/core/rtw_cmd.c | 159 ++++++++++++++++---------------
> >  1 file changed, 80 insertions(+), 79 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > index 6330933..4db4dfe 100644
> > --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > @@ -102,83 +102,76 @@ static struct cmd_hdl wlancmds[] = {
> >  			     tdls_hdl23a)
> >  };
> >  
> > -struct _cmd_callback	rtw_cmd_callback[] = {
> > -	{GEN_CMD_CODE(_Read_MACREG), NULL}, /*0*/
> > +struct _cmd_callback rtw_cmd_callback[] = {
> > +	{GEN_CMD_CODE(_Read_MACREG), NULL},				/*0*/
> >  	{GEN_CMD_CODE(_Write_MACREG), NULL},
> >  	{GEN_CMD_CODE(_Read_BBREG), &rtw_getbbrfreg_cmdrsp_callback23a},
> >  	{GEN_CMD_CODE(_Write_BBREG), NULL},
> >  	{GEN_CMD_CODE(_Read_RFREG), &rtw_getbbrfreg_cmdrsp_callback23a},
> > -	{GEN_CMD_CODE(_Write_RFREG), NULL}, /*5*/
> > +	{GEN_CMD_CODE(_Write_RFREG), NULL},
> >  	{GEN_CMD_CODE(_Read_EEPROM), NULL},
> >  	{GEN_CMD_CODE(_Write_EEPROM), NULL},
> >  	{GEN_CMD_CODE(_Read_EFUSE), NULL},
> >  	{GEN_CMD_CODE(_Write_EFUSE), NULL},
> > -
> > -	{GEN_CMD_CODE(_Read_CAM),	NULL},	/*10*/
> > -	{GEN_CMD_CODE(_Write_CAM),	 NULL},
> > +	{GEN_CMD_CODE(_Read_CAM), NULL},				/*10*/
> > +	{GEN_CMD_CODE(_Write_CAM), NULL},
> >  	{GEN_CMD_CODE(_setBCNITV), NULL},
> >  	{GEN_CMD_CODE(_setMBIDCFG), NULL},
> > -	{GEN_CMD_CODE(_JoinBss), &rtw_joinbss_cmd23a_callback},  /*14*/
> > -	{GEN_CMD_CODE(_DisConnect), &rtw_disassoc_cmd23a_callback}, /*15*/
> > +	{GEN_CMD_CODE(_JoinBss), &rtw_joinbss_cmd23a_callback},
> > +	{GEN_CMD_CODE(_DisConnect), &rtw_disassoc_cmd23a_callback},
> 
> Why delete the comments?
>
The comments note the place in the list. I didn't delete them entirely,
but replaced them with a marker every 10 items.  This was the second of
these two lists and I tried to give them the same look n feel.  

alison

