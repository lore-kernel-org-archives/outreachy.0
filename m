X-GM-THRID: 6390824128052461568
X-Received: by 10.223.142.196 with SMTP id q62mr74352wrb.8.1488281088953;
        Tue, 28 Feb 2017 03:24:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.207 with SMTP id u198ls89106lja.18.gmail; Tue, 28 Feb
 2017 03:24:47 -0800 (PST)
X-Received: by 10.25.0.141 with SMTP id 135mr206724lfa.5.1488281087883;
        Tue, 28 Feb 2017 03:24:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si1144191wmd.0.2017.02.28.03.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 03:24:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,219,1484002800"; 
   d="scan'208";a="262404793"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 12:24:47 +0100
Date: Tue, 28 Feb 2017 12:24:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Arushi Singhal <arushisinghal19971997@gmail.com>, 
    arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v7] staging: xgifb: correct the
 multiple line dereference
In-Reply-To: <1488280264.25838.26.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1702281220220.3056@hadrien>
References: <20170228104507.GA30448@arushi-HP-Pavilion-Notebook> <1488280264.25838.26.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 28 Feb 2017, Joe Perches wrote:

> On Tue, 2017-02-28 at 16:15 +0530, Arushi Singhal wrote:
> > Error reported by checkpatch.pl as "avoid multiple line dereference".
> > Addition of new variables to make the code more readable.
>
> You should probably split this into 2 patches, one for
> each file.
>
> What Julia said about finding a better/shorter identifier
> than RefreshRateTableIndex is true but I still suggest
> something like:
>
> > diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c@@ -221,8 +221,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
> >
> >  	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
> >  	       tempbx; (*i)--) {
> > -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> > -				Ext_InfoFlag;
> > +		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
> > +
>
> I suggest something like:
> ---
>  drivers/staging/xgifb/vb_setmode.c | 41 ++++++++++++++++++--------------------
>  1 file changed, 19 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 7c7c8c8f1df3..daa3318aab41 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -172,10 +172,12 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  		struct vb_device_info *pVBInfo)
>  {
>  	unsigned short tempax, tempbx, resinfo, modeflag, infoflag;
> +	const struct XGI_Ext2Struct *ext2;
>
>  	modeflag = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
>  	resinfo = XGI330_EModeIDTable[ModeIdIndex].Ext_RESINFO;
> -	tempbx = XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID;
> +	ext2 = &XGI330_RefIndex[RefreshRateTableIndex];
> +	tempbx = ext2[*i].ModeID;
>  	tempax = 0;
>
>  	if (pVBInfo->VBInfo & SetCRT2ToRAMDAC) {
> @@ -219,10 +221,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  			return 0;
>  	}
>
> -	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
> -	       tempbx; (*i)--) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> +	for (; ext2[*i].ModeID == tempbx; (*i)--) {
> +		infoflag = ext2[*i].Ext_InfoFlag;
>  		if (infoflag & tempax)
>  			return 1;
>
> @@ -231,12 +231,9 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  	}
>
>  	for ((*i) = 0;; (*i)++) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> -		if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
> -				!= tempbx) {
> +		infoflag = ext2[*i].Ext_InfoFlag;
> +		if (ext2[*i].ModeID != tempbx)
>  			return 0;
> -		}

It's drifting a little bit from the original issue, but the whole *i thing
is not very nice.  The function is used in only one place, and the call
looks like this:

               temp = XGI_AjustCRT2Rate(ModeIdIndex, RefreshRateTableIndex,
	                                 &i, pVBInfo);

immediately followed by:

return RefreshRateTableIndex + i;

temp is never used.  Could the function be made to return a negative error
code on failure and the updated value of i on success?  The (*i) could
become just i, which would even be a little shorter.

julia

>
>  		if (infoflag & tempax)
>  			return 1;
> @@ -5050,6 +5047,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
>  {
>  	const u8 LCDARefreshIndex[] = {
>  		0x00, 0x00, 0x03, 0x01, 0x01, 0x01, 0x01, 0x00 };
> +	const struct XGI_Ext2Struct *ext2;
>
>  	unsigned short RefreshRateTableIndex, i, index, temp;
>
> @@ -5073,29 +5071,29 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
>  	}
>
>  	RefreshRateTableIndex = XGI330_EModeIDTable[ModeIdIndex].REFindex;
> -	ModeNo = XGI330_RefIndex[RefreshRateTableIndex].ModeID;
> +	ext2 = &XGI330_RefIndex[RefreshRateTableIndex];
> +	ModeNo = ext2->ModeID;
>  	if (pXGIHWDE->jChipType >= XG20) { /* for XG20, XG21, XG27 */
> -		if ((XGI330_RefIndex[RefreshRateTableIndex].XRes == 800) &&
> -		    (XGI330_RefIndex[RefreshRateTableIndex].YRes == 600)) {
> +		if ((ext2->XRes == 800) &&
> +		    (ext2->YRes == 600)) {
>  			index++;
>  		}
>  		/* do the similar adjustment like XGISearchCRT1Rate() */
> -		if ((XGI330_RefIndex[RefreshRateTableIndex].XRes == 1024) &&
> -		    (XGI330_RefIndex[RefreshRateTableIndex].YRes == 768)) {
> +		if ((ext2->XRes == 1024) &&
> +		    (ext2->YRes == 768)) {
>  			index++;
>  		}
> -		if ((XGI330_RefIndex[RefreshRateTableIndex].XRes == 1280) &&
> -		    (XGI330_RefIndex[RefreshRateTableIndex].YRes == 1024)) {
> +		if ((ext2->XRes == 1280) &&
> +		    (ext2->YRes == 1024)) {
>  			index++;
>  		}
>  	}
>
>  	i = 0;
>  	do {
> -		if (XGI330_RefIndex[RefreshRateTableIndex + i].
> -			ModeID != ModeNo)
> +		if (ext2[i].ModeID != ModeNo)
>  			break;
> -		temp = XGI330_RefIndex[RefreshRateTableIndex + i].Ext_InfoFlag;
> +		temp = ext2[i].Ext_InfoFlag;
>  		temp &= ModeTypeMask;
>  		if (temp < pVBInfo->ModeType)
>  			break;
> @@ -5105,8 +5103,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
>  	} while (index != 0xFFFF);
>  	if (!(pVBInfo->VBInfo & SetCRT2ToRAMDAC)) {
>  		if (pVBInfo->VBInfo & SetInSlaveMode) {
> -			temp = XGI330_RefIndex[RefreshRateTableIndex + i - 1].
> -				Ext_InfoFlag;
> +			temp = ext2[i - 1].Ext_InfoFlag;
>  			if (temp & InterlaceMode)
>  				i++;
>  		}
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488280264.25838.26.camel%40perches.com.
> For more options, visit https://groups.google.com/d/optout.
>

