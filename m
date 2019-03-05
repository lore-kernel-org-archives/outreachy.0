X-GM-THRID: 6664915605845442560
X-Received: by 2002:adf:ee89:: with SMTP id b9mr1309935wro.23.1551797828650;
        Tue, 05 Mar 2019 06:57:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:c645:: with SMTP id w66ls390923wmf.3.gmail; Tue, 05 Mar
 2019 06:57:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqwBKu4nuivN0JXwfCUBMYK961oviCHIPABkkBCvf3Td/c3ATTwDNZlWJcPHZifSwrkHujpq
X-Received: by 2002:a1c:9c93:: with SMTP id f141mr335055wme.10.1551797827733;
        Tue, 05 Mar 2019 06:57:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551797827; cv=none;
        d=google.com; s=arc-20160816;
        b=qPpd29F/+U8BhxGQjK4/J2gOl+0HjoIP6J3z9PoPQRgjUt9eOACnkUMKXOJLI6SBUh
         T4a/DISBjqFNSOfy7rNtUBK8/pGeU+xN2a3yaJBJ6vbxFWSrUvi8di+pt5e7faX+is0r
         7ACeEgl26ybmhABnko3eRYR5AwFhyGMB/wz0rASHribWmdPJ/9A6hJuaNg2fo8LigmgI
         UNv2GoR8WVnpHWXXfByqpmnT3ib6D6UBTpfzedwYyDFpTGiyGfsKaqW9Mork2szlWEDH
         ftfOQEvudX01zoyhr+kkQqcupZ9s1dONICrmYSCsT2YLcaf2h2CKk35hAr4wZ0pn6um/
         XI3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=4Gq5AWd395nH3zMwcm31Tr8S+HSNPvtuUT8iRVW50Hc=;
        b=B5GYuf7VYVN3H8H7h7w6DSFZQm3Y5VK7j8tC/6+/JZmZ1i4SlA224VzeGhi02SOoxd
         0jaTPoT2Q//ZRItvxYB7XepBnlGCwsuKdawPkpXH8lw42yB/H2mEun2Bh7/epYxca2ZU
         TPNWsafPr5L1pBRfOQIs4Ok0jIK4C3rIdJwUrMG4ds0gEqlqZW5pN9vrlMsM2tzziMcN
         C9ZCFbcOf7JHuq6OHsINK/eW+DN7pJ3XBLbF9mAukPGWjiC8ka36N8fveLcOmDjkJw11
         fbd0F5R126KfAL1WkQsE9J5cvWKEowd7H4Kc88Jx4ES6fsbaKH/QaUvBtM5S5gULFeZV
         Qeqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q192si346852wme.3.2019.03.05.06.57.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 06:57:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,444,1544482800"; 
   d="scan'208";a="372027644"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 15:57:07 +0100
Date: Tue, 5 Mar 2019 15:57:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Avoid camelcase
In-Reply-To: <20190305143241.14118-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.20.1903051554140.3701@hadrien>
References: <20190305143241.14118-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> -unsigned int BBuGetFrameTime(unsigned char byPreambleType,
> -			     unsigned char byPktType,
> -			     unsigned int cbFrameLength, unsigned short wRate)
> +unsigned int BBUGETFRAMETIME(unsigned char BYPREAMBLETYPE,
> +			     unsigned char BYPKTTYPE,
> +			     unsigned int CBFRAMELENGTH, unsigned short WRATE)
>  {
> -	unsigned int uFrameTime;
> -	unsigned int uPreamble;
> -	unsigned int uTmp;
> -	unsigned int uRateIdx = (unsigned int)wRate;
> -	unsigned int uRate = 0;
> +	unsigned int UFRAMETIME;
> +	unsigned int UPREAMBLE;
> +	unsigned int UTMP;
> +	unsigned int URATEIDX = (unsigned int)WRATE;
> +	unsigned int URATE = 0;

Local variables should be in lower case.  _ can be used to separate words.
There should not be the little characters at the front to indicate the
variable types.

This makes a really big patch that is not easy to review.  Consider just
working on one set of variables instead, for example all of the local
variables in a single function.

julia


>
> -	if (uRateIdx > RATE_54M)
> +	if (URATEIDX > RATE_54M)
>  		return 0;
>
> -	uRate = (unsigned int)awcFrameTime[uRateIdx];
> +	URATE = (unsigned int)AWCFRAMETIME[URATEIDX];
>
> -	if (uRateIdx <= 3) {          /* CCK mode */
> -		if (byPreambleType == 1) /* Short */
> -			uPreamble = 96;
> -		else
> -			uPreamble = 192;
> +		if (URATEIDX <= 3) {          /* CCK mode */
> +			if (BYPREAMBLETYPE == 1) /* Short */
> +				UPREAMBLE = 96;
> +			else
> +				UPREAMBLE = 192;
>
> -		uFrameTime = (cbFrameLength * 80) / uRate;  /* ????? */
> -		uTmp = (uFrameTime * uRate) / 80;
> -		if (cbFrameLength != uTmp)
> -			uFrameTime++;
> +			UFRAMETIME = (CBFRAMELENGTH * 80) / URATE;  /* ????? */
> +			UTMP = (UFRAMETIME * URATE) / 80;
> +			if (CBFRAMELENGTH != UTMP)
> +				UFRAMETIME++;
>
> -		return uPreamble + uFrameTime;
> -	}
> -	uFrameTime = (cbFrameLength * 8 + 22) / uRate; /* ???????? */
> -	uTmp = ((uFrameTime * uRate) - 22) / 8;
> -	if (cbFrameLength != uTmp)
> -		uFrameTime++;
> +			return UPREAMBLE + UFRAMETIME;
> +		}
> +		UFRAMETIME = (CBFRAMELENGTH * 8 + 22) / URATE; /* ???????? */
> +		UTMP = ((UFRAMETIME * URATE) - 22) / 8;
> +	if (CBFRAMELENGTH != UTMP)
> +		UFRAMETIME++;
>
> -	uFrameTime = uFrameTime * 4;    /* ??????? */
> -	if (byPktType != PK_TYPE_11A)
> -		uFrameTime += 6;     /* ?????? */
> +	UFRAMETIME = UFRAMETIME * 4;    /* ??????? */
> +	if (BYPKTTYPE != PK_TYPE_11A)
> +		UFRAMETIME += 6;     /* ?????? */
>
> -	return 20 + uFrameTime; /* ?????? */
> +	return 20 + UFRAMETIME; /* ?????? */
>  }
>
>  /*
> @@ -1768,7 +1768,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
>  	u32 count = 0;
>  	u32 tmp;
>  	int ext_bit;
> -	u8 preamble_type = priv->byPreambleType;
> +	u8 preamble_type = priv->BYPREAMBLETYPE;
>
>  	bit_count = frame_length * 8;
>  	ext_bit = false;
> @@ -1899,34 +1899,34 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
>   * Parameters:
>   *  In:
>   *      iobase      - I/O base address
> - *      byBBAddr    - address of register in Baseband
> + *      BYBBADDR    - address of register in Baseband
>   *  Out:
> - *      pbyData     - data read
> + *      PBYDATA     - data read
>   *
>   * Return Value: true if succeeded; false if failed.
>   *
>   */
> -bool BBbReadEmbedded(struct vnt_private *priv,
> -		     unsigned char byBBAddr, unsigned char *pbyData)
> +bool BBBREADEMBEDDED(struct vnt_private *priv,
> +		     unsigned char BYBBADDR, unsigned char *PBYDATA)
>  {
> -	void __iomem *iobase = priv->PortOffset;
> +	void __iomem *iobase = priv->PORTOFFSET;
>  	unsigned short ww;
> -	unsigned char byValue;
> +	unsigned char BYVALUE;
>
>  	/* BB reg offset */
> -	VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);
> +	VNSVOUTPORTB(iobase + MAC_REG_BBREGADR, BYBBADDR);
>
>  	/* turn on REGR */
> -	MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
> +	MACVREGBITSON(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGR);
>  	/* W_MAX_TIMEOUT is the timeout period */
>  	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
> -		VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
> -		if (byValue & BBREGCTL_DONE)
> +		VNSVINPORTB(iobase + MAC_REG_BBREGCTL, &BYVALUE);
> +		if (BYVALUE & BBREGCTL_DONE)
>  			break;
>  	}
>
>  	/* get BB data */
> -	VNSvInPortB(iobase + MAC_REG_BBREGDATA, pbyData);
> +	VNSVINPORTB(iobase + MAC_REG_BBREGDATA, PBYDATA);
>
>  	if (ww == W_MAX_TIMEOUT) {
>  		pr_debug(" DBG_PORT80(0x30)\n");
> @@ -1941,32 +1941,32 @@ bool BBbReadEmbedded(struct vnt_private *priv,
>   * Parameters:
>   *  In:
>   *      iobase      - I/O base address
> - *      byBBAddr    - address of register in Baseband
> - *      byData      - data to write
> + *      BYBBADDR    - address of register in Baseband
> + *      BYDATA      - data to write
>   *  Out:
>   *      none
>   *
>   * Return Value: true if succeeded; false if failed.
>   *
>   */
> -bool BBbWriteEmbedded(struct vnt_private *priv,
> -		      unsigned char byBBAddr, unsigned char byData)
> +bool BBBWRITEEMBEDDED(struct vnt_private *priv,
> +		      unsigned char BYBBADDR, unsigned char BYDATA)
>  {
> -	void __iomem *iobase = priv->PortOffset;
> +	void __iomem *iobase = priv->PORTOFFSET;
>  	unsigned short ww;
> -	unsigned char byValue;
> +	unsigned char BYVALUE;
>
>  	/* BB reg offset */
> -	VNSvOutPortB(iobase + MAC_REG_BBREGADR, byBBAddr);
> +	VNSVOUTPORTB(iobase + MAC_REG_BBREGADR, BYBBADDR);
>  	/* set BB data */
> -	VNSvOutPortB(iobase + MAC_REG_BBREGDATA, byData);
> +	VNSVOUTPORTB(iobase + MAC_REG_BBREGDATA, BYDATA);
>
>  	/* turn on BBREGCTL_REGW */
> -	MACvRegBitsOn(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
> +	MACVREGBITSON(iobase, MAC_REG_BBREGCTL, BBREGCTL_REGW);
>  	/* W_MAX_TIMEOUT is the timeout period */
>  	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
> -		VNSvInPortB(iobase + MAC_REG_BBREGCTL, &byValue);
> -		if (byValue & BBREGCTL_DONE)
> +		VNSVINPORTB(iobase + MAC_REG_BBREGCTL, &BYVALUE);
> +		if (BYVALUE & BBREGCTL_DONE)
>  			break;
>  	}
>
> @@ -1984,7 +1984,7 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
>   *  In:
>   *      iobase      - I/O base address
>   *      byRevId     - Revision ID
> - *      byRFType    - RF type
> + *      BYRFTYPE    - RF type
>   *  Out:
>   *      none
>   *
> @@ -1992,95 +1992,95 @@ bool BBbWriteEmbedded(struct vnt_private *priv,
>   *
>   */
>
> -bool BBbVT3253Init(struct vnt_private *priv)
> +bool BBBVT3253INIT(struct vnt_private *priv)
>  {
> -	bool bResult = true;
> +	bool BRESULT = true;
>  	int        ii;
> -	void __iomem *iobase = priv->PortOffset;
> -	unsigned char byRFType = priv->byRFType;
> -	unsigned char byLocalID = priv->byLocalID;
> +	void __iomem *iobase = priv->PORTOFFSET;
> +	unsigned char BYRFTYPE = priv->BYRFTYPE;
> +	unsigned char BYLOCALID = priv->BYLOCALID;
>
> -	if (byRFType == RF_RFMD2959) {
> -		if (byLocalID <= REV_ID_VT3253_A1) {
> +	if (BYRFTYPE == RF_RFMD2959) {
> +		if (BYLOCALID <= REV_ID_VT3253_A1) {
>  			for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
> -				bResult &= BBbWriteEmbedded(priv,
> -					byVT3253InitTab_RFMD[ii][0],
> -					byVT3253InitTab_RFMD[ii][1]);
> +				BRESULT &= BBBWRITEEMBEDDED(priv,
> +					BYVT3253INITTAB_RFMD[ii][0],
> +					BYVT3253INITTAB_RFMD[ii][1]);
>
>  		} else {
>  			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
> -				bResult &= BBbWriteEmbedded(priv,
> -					byVT3253B0_RFMD[ii][0],
> -					byVT3253B0_RFMD[ii][1]);
> +				BRESULT &= BBBWRITEEMBEDDED(priv,
> +					BYVT3253B0_RFMD[ii][0],
> +					BYVT3253B0_RFMD[ii][1]);
>
>  			for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959; ii++)
> -				bResult &= BBbWriteEmbedded(priv,
> -					byVT3253B0_AGC4_RFMD2959[ii][0],
> -					byVT3253B0_AGC4_RFMD2959[ii][1]);
> +				BRESULT &= BBBWRITEEMBEDDED(priv,
> +					BYVT3253B0_AGC4_RFMD2959[ii][0],
> +					BYVT3253B0_AGC4_RFMD2959[ii][1]);
>
> -			VNSvOutPortD(iobase + MAC_REG_ITRTMSET, 0x23);
> -			MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
> +			VNSVOUTPORTD(iobase + MAC_REG_ITRTMSET, 0x23);
> +			MACVREGBITSON(iobase, MAC_REG_PAPEDELAY, BIT(0));
>  		}
> -		priv->abyBBVGA[0] = 0x18;
> -		priv->abyBBVGA[1] = 0x0A;
> -		priv->abyBBVGA[2] = 0x0;
> -		priv->abyBBVGA[3] = 0x0;
> -		priv->ldBmThreshold[0] = -70;
> -		priv->ldBmThreshold[1] = -50;
> -		priv->ldBmThreshold[2] = 0;
> -		priv->ldBmThreshold[3] = 0;
> -	} else if ((byRFType == RF_AIROHA) || (byRFType == RF_AL2230S)) {
> +		priv->ABYBBVGA[0] = 0x18;
> +		priv->ABYBBVGA[1] = 0x0A;
> +		priv->ABYBBVGA[2] = 0x0;
> +		priv->ABYBBVGA[3] = 0x0;
> +		priv->LDBMTHRESHOLD[0] = -70;
> +		priv->LDBMTHRESHOLD[1] = -50;
> +		priv->LDBMTHRESHOLD[2] = 0;
> +		priv->LDBMTHRESHOLD[3] = 0;
> +	} else if ((BYRFTYPE == RF_AIROHA) || (BYRFTYPE == RF_AL2230S)) {
>  		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_AIROHA2230[ii][0],
> -				byVT3253B0_AIROHA2230[ii][1]);
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_AIROHA2230[ii][0],
> +				BYVT3253B0_AIROHA2230[ii][1]);
>
>  		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
> -
> -		priv->abyBBVGA[0] = 0x1C;
> -		priv->abyBBVGA[1] = 0x10;
> -		priv->abyBBVGA[2] = 0x0;
> -		priv->abyBBVGA[3] = 0x0;
> -		priv->ldBmThreshold[0] = -70;
> -		priv->ldBmThreshold[1] = -48;
> -		priv->ldBmThreshold[2] = 0;
> -		priv->ldBmThreshold[3] = 0;
> -	} else if (byRFType == RF_UW2451) {
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC[ii][1]);
> +
> +		priv->ABYBBVGA[0] = 0x1C;
> +		priv->ABYBBVGA[1] = 0x10;
> +		priv->ABYBBVGA[2] = 0x0;
> +		priv->ABYBBVGA[3] = 0x0;
> +		priv->LDBMTHRESHOLD[0] = -70;
> +		priv->LDBMTHRESHOLD[1] = -48;
> +		priv->LDBMTHRESHOLD[2] = 0;
> +		priv->LDBMTHRESHOLD[3] = 0;
> +	} else if (BYRFTYPE == RF_UW2451) {
>  		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_UW2451[ii][0],
> -				byVT3253B0_UW2451[ii][1]);
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_UW2451[ii][0],
> +				BYVT3253B0_UW2451[ii][1]);
>
>  		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_AGC[ii][0],
> -				byVT3253B0_AGC[ii][1]);
> -
> -		VNSvOutPortB(iobase + MAC_REG_ITRTMSET, 0x23);
> -		MACvRegBitsOn(iobase, MAC_REG_PAPEDELAY, BIT(0));
> -
> -		priv->abyBBVGA[0] = 0x14;
> -		priv->abyBBVGA[1] = 0x0A;
> -		priv->abyBBVGA[2] = 0x0;
> -		priv->abyBBVGA[3] = 0x0;
> -		priv->ldBmThreshold[0] = -60;
> -		priv->ldBmThreshold[1] = -50;
> -		priv->ldBmThreshold[2] = 0;
> -		priv->ldBmThreshold[3] = 0;
> -	} else if (byRFType == RF_UW2452) {
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_AGC[ii][0],
> +				BYVT3253B0_AGC[ii][1]);
> +
> +		VNSVOUTPORTB(iobase + MAC_REG_ITRTMSET, 0x23);
> +		MACVREGBITSON(iobase, MAC_REG_PAPEDELAY, BIT(0));
> +
> +		priv->ABYBBVGA[0] = 0x14;
> +		priv->ABYBBVGA[1] = 0x0A;
> +		priv->ABYBBVGA[2] = 0x0;
> +		priv->ABYBBVGA[3] = 0x0;
> +		priv->LDBMTHRESHOLD[0] = -60;
> +		priv->LDBMTHRESHOLD[1] = -50;
> +		priv->LDBMTHRESHOLD[2] = 0;
> +		priv->LDBMTHRESHOLD[3] = 0;
> +	} else if (BYRFTYPE == RF_UW2452) {
>  		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_UW2451[ii][0],
> -				byVT3253B0_UW2451[ii][1]);
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_UW2451[ii][0],
> +				BYVT3253B0_UW2451[ii][1]);
>
>  		/* Init ANT B select,
>  		 * TX Config CR09 = 0x61->0x45,
>  		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
>  		 */
>
> -		/*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
> +		/*BRESULT &= BBBWRITEEMBEDDED(iobase,0x09,0x41);*/
>
>  		/* Init ANT B select,
>  		 * RX Config CR10 = 0x28->0x2A,
> @@ -2088,100 +2088,100 @@ bool BBbVT3253Init(struct vnt_private *priv)
>  		 * make the ANT_A, ANT_B inverted)
>  		 */
>
> -		/*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
> +		/*BRESULT &= BBBWRITEEMBEDDED(iobase,0x0a,0x28);*/
>  		/* Select VC1/VC2, CR215 = 0x02->0x06 */
> -		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
> +		BRESULT &= BBBWRITEEMBEDDED(priv, 0xd7, 0x06);
>
>  		/* {{RobertYu:20050125, request by Jack */
> -		bResult &= BBbWriteEmbedded(priv, 0x90, 0x20);
> -		bResult &= BBbWriteEmbedded(priv, 0x97, 0xeb);
> +		BRESULT &= BBBWRITEEMBEDDED(priv, 0x90, 0x20);
> +		BRESULT &= BBBWRITEEMBEDDED(priv, 0x97, 0xeb);
>  		/* }} */
>
>  		/* {{RobertYu:20050221, request by Jack */
> -		bResult &= BBbWriteEmbedded(priv, 0xa6, 0x00);
> -		bResult &= BBbWriteEmbedded(priv, 0xa8, 0x30);
> +		BRESULT &= BBBWRITEEMBEDDED(priv, 0xa6, 0x00);
> +		BRESULT &= BBBWRITEEMBEDDED(priv, 0xa8, 0x30);
>  		/* }} */
> -		bResult &= BBbWriteEmbedded(priv, 0xb0, 0x58);
> +		BRESULT &= BBBWRITEEMBEDDED(priv, 0xb0, 0x58);
>
>  		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
> -
> -		priv->abyBBVGA[0] = 0x14;
> -		priv->abyBBVGA[1] = 0x0A;
> -		priv->abyBBVGA[2] = 0x0;
> -		priv->abyBBVGA[3] = 0x0;
> -		priv->ldBmThreshold[0] = -60;
> -		priv->ldBmThreshold[1] = -50;
> -		priv->ldBmThreshold[2] = 0;
> -		priv->ldBmThreshold[3] = 0;
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC[ii][1]);
> +
> +		priv->ABYBBVGA[0] = 0x14;
> +		priv->ABYBBVGA[1] = 0x0A;
> +		priv->ABYBBVGA[2] = 0x0;
> +		priv->ABYBBVGA[3] = 0x0;
> +		priv->LDBMTHRESHOLD[0] = -60;
> +		priv->LDBMTHRESHOLD[1] = -50;
> +		priv->LDBMTHRESHOLD[2] = 0;
> +		priv->LDBMTHRESHOLD[3] = 0;
>  		/* }} RobertYu */
>
> -	} else if (byRFType == RF_VT3226) {
> +	} else if (BYRFTYPE == RF_VT3226) {
>  		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_AIROHA2230[ii][0],
> -				byVT3253B0_AIROHA2230[ii][1]);
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_AIROHA2230[ii][0],
> +				BYVT3253B0_AIROHA2230[ii][1]);
>
>  		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
> -
> -		priv->abyBBVGA[0] = 0x1C;
> -		priv->abyBBVGA[1] = 0x10;
> -		priv->abyBBVGA[2] = 0x0;
> -		priv->abyBBVGA[3] = 0x0;
> -		priv->ldBmThreshold[0] = -70;
> -		priv->ldBmThreshold[1] = -48;
> -		priv->ldBmThreshold[2] = 0;
> -		priv->ldBmThreshold[3] = 0;
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC[ii][1]);
> +
> +		priv->ABYBBVGA[0] = 0x1C;
> +		priv->ABYBBVGA[1] = 0x10;
> +		priv->ABYBBVGA[2] = 0x0;
> +		priv->ABYBBVGA[3] = 0x0;
> +		priv->LDBMTHRESHOLD[0] = -70;
> +		priv->LDBMTHRESHOLD[1] = -48;
> +		priv->LDBMTHRESHOLD[2] = 0;
> +		priv->LDBMTHRESHOLD[3] = 0;
>  		/* Fix VT3226 DFC system timing issue */
> -		MACvSetRFLE_LatchBase(iobase);
> +		MACVSETRFLE_LATCHBASE(iobase);
>  		/* {{ RobertYu: 20050104 */
> -	} else if (byRFType == RF_AIROHA7230) {
> +	} else if (BYRFTYPE == RF_AIROHA7230) {
>  		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_AIROHA2230[ii][0],
> -				byVT3253B0_AIROHA2230[ii][1]);
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_AIROHA2230[ii][0],
> +				BYVT3253B0_AIROHA2230[ii][1]);
>
>  		/* {{ RobertYu:20050223, request by JerryChung */
>  		/* Init ANT B select,TX Config CR09 = 0x61->0x45,
>  		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
>  		 */
> -		/*bResult &= BBbWriteEmbedded(iobase,0x09,0x41);*/
> +		/*BRESULT &= BBBWRITEEMBEDDED(iobase,0x09,0x41);*/
>  		/* Init ANT B select,RX Config CR10 = 0x28->0x2A,
>  		 * 0x2A->0x28(VC1/VC2 define, make the ANT_A, ANT_B inverted)
>  		 */
> -		/*bResult &= BBbWriteEmbedded(iobase,0x0a,0x28);*/
> +		/*BRESULT &= BBBWRITEEMBEDDED(iobase,0x0a,0x28);*/
>  		/* Select VC1/VC2, CR215 = 0x02->0x06 */
> -		bResult &= BBbWriteEmbedded(priv, 0xd7, 0x06);
> +		BRESULT &= BBBWRITEEMBEDDED(priv, 0xd7, 0x06);
>  		/* }} */
>
>  		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
> -			bResult &= BBbWriteEmbedded(priv,
> -				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
> -
> -		priv->abyBBVGA[0] = 0x1C;
> -		priv->abyBBVGA[1] = 0x10;
> -		priv->abyBBVGA[2] = 0x0;
> -		priv->abyBBVGA[3] = 0x0;
> -		priv->ldBmThreshold[0] = -70;
> -		priv->ldBmThreshold[1] = -48;
> -		priv->ldBmThreshold[2] = 0;
> -		priv->ldBmThreshold[3] = 0;
> +			BRESULT &= BBBWRITEEMBEDDED(priv,
> +				BYVT3253B0_AGC[ii][0], BYVT3253B0_AGC[ii][1]);
> +
> +		priv->ABYBBVGA[0] = 0x1C;
> +		priv->ABYBBVGA[1] = 0x10;
> +		priv->ABYBBVGA[2] = 0x0;
> +		priv->ABYBBVGA[3] = 0x0;
> +		priv->LDBMTHRESHOLD[0] = -70;
> +		priv->LDBMTHRESHOLD[1] = -48;
> +		priv->LDBMTHRESHOLD[2] = 0;
> +		priv->LDBMTHRESHOLD[3] = 0;
>  		/* }} RobertYu */
>  	} else {
>  		/* No VGA Table now */
> -		priv->bUpdateBBVGA = false;
> -		priv->abyBBVGA[0] = 0x1C;
> +		priv->BUPDATEBBVGA = false;
> +		priv->ABYBBVGA[0] = 0x1C;
>  	}
>
> -	if (byLocalID > REV_ID_VT3253_A1) {
> -		BBbWriteEmbedded(priv, 0x04, 0x7F);
> -		BBbWriteEmbedded(priv, 0x0D, 0x01);
> +	if (BYLOCALID > REV_ID_VT3253_A1) {
> +		BBBWRITEEMBEDDED(priv, 0x04, 0x7F);
> +		BBBWRITEEMBEDDED(priv, 0x0D, 0x01);
>  	}
>
> -	return bResult;
> +	return BRESULT;
>  }
>
>  /*
> @@ -2197,42 +2197,42 @@ bool BBbVT3253Init(struct vnt_private *priv)
>   *
>   */
>  void
> -BBvSetShortSlotTime(struct vnt_private *priv)
> +BBVSETSHORTSLOTTIME(struct vnt_private *priv)
>  {
> -	unsigned char byBBRxConf = 0;
> -	unsigned char byBBVGA = 0;
> +	unsigned char BYBBRXCONF = 0;
> +	unsigned char BYBBVGA = 0;
>
> -	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
> +	BBBREADEMBEDDED(priv, 0x0A, &BYBBRXCONF); /* CR10 */
>
> -	if (priv->bShortSlotTime)
> -		byBBRxConf &= 0xDF; /* 1101 1111 */
> +	if (priv->BSHORTSLOTTIME)
> +		BYBBRXCONF &= 0xDF; /* 1101 1111 */
>  	else
> -		byBBRxConf |= 0x20; /* 0010 0000 */
> +		BYBBRXCONF |= 0x20; /* 0010 0000 */
>
>  	/* patch for 3253B0 Baseband with Cardbus module */
> -	BBbReadEmbedded(priv, 0xE7, &byBBVGA);
> -	if (byBBVGA == priv->abyBBVGA[0])
> -		byBBRxConf |= 0x20; /* 0010 0000 */
> +	BBBREADEMBEDDED(priv, 0xE7, &BYBBVGA);
> +	if (BYBBVGA == priv->ABYBBVGA[0])
> +		BYBBRXCONF |= 0x20; /* 0010 0000 */
>
> -	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
> +	BBBWRITEEMBEDDED(priv, 0x0A, BYBBRXCONF); /* CR10 */
>  }
>
> -void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
> +void BBVSETVGAGAINOFFSET(struct vnt_private *priv, unsigned char BYDATA)
>  {
> -	unsigned char byBBRxConf = 0;
> +	unsigned char BYBBRXCONF = 0;
>
> -	BBbWriteEmbedded(priv, 0xE7, byData);
> +	BBBWRITEEMBEDDED(priv, 0xE7, BYDATA);
>
> -	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
> +	BBBREADEMBEDDED(priv, 0x0A, &BYBBRXCONF); /* CR10 */
>  	/* patch for 3253B0 Baseband with Cardbus module */
> -	if (byData == priv->abyBBVGA[0])
> -		byBBRxConf |= 0x20; /* 0010 0000 */
> -	else if (priv->bShortSlotTime)
> -		byBBRxConf &= 0xDF; /* 1101 1111 */
> +	if (BYDATA == priv->ABYBBVGA[0])
> +		BYBBRXCONF |= 0x20; /* 0010 0000 */
> +	else if (priv->BSHORTSLOTTIME)
> +		BYBBRXCONF &= 0xDF; /* 1101 1111 */
>  	else
> -		byBBRxConf |= 0x20; /* 0010 0000 */
> -	priv->byBBVGACurrent = byData;
> -	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
> +		BYBBRXCONF |= 0x20; /* 0010 0000 */
> +	priv->BYBBVGACURRENT = BYDATA;
> +	BBBWRITEEMBEDDED(priv, 0x0A, BYBBRXCONF); /* CR10 */
>  }
>
>  /*
> @@ -2248,12 +2248,12 @@ void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
>   *
>   */
>  void
> -BBvSoftwareReset(struct vnt_private *priv)
> +BBVSOFTWARERESET(struct vnt_private *priv)
>  {
> -	BBbWriteEmbedded(priv, 0x50, 0x40);
> -	BBbWriteEmbedded(priv, 0x50, 0);
> -	BBbWriteEmbedded(priv, 0x9C, 0x01);
> -	BBbWriteEmbedded(priv, 0x9C, 0);
> +	BBBWRITEEMBEDDED(priv, 0x50, 0x40);
> +	BBBWRITEEMBEDDED(priv, 0x50, 0);
> +	BBBWRITEEMBEDDED(priv, 0x9C, 0x01);
> +	BBBWRITEEMBEDDED(priv, 0x9C, 0);
>  }
>
>  /*
> @@ -2269,13 +2269,13 @@ BBvSoftwareReset(struct vnt_private *priv)
>   *
>   */
>  void
> -BBvPowerSaveModeON(struct vnt_private *priv)
> +BBVPOWERSAVEMODEON(struct vnt_private *priv)
>  {
> -	unsigned char byOrgData;
> +	unsigned char BYORGDATA;
>
> -	BBbReadEmbedded(priv, 0x0D, &byOrgData);
> -	byOrgData |= BIT(0);
> -	BBbWriteEmbedded(priv, 0x0D, byOrgData);
> +	BBBREADEMBEDDED(priv, 0x0D, &BYORGDATA);
> +	BYORGDATA |= BIT(0);
> +	BBBWRITEEMBEDDED(priv, 0x0D, BYORGDATA);
>  }
>
>  /*
> @@ -2291,13 +2291,13 @@ BBvPowerSaveModeON(struct vnt_private *priv)
>   *
>   */
>  void
> -BBvPowerSaveModeOFF(struct vnt_private *priv)
> +BBVPOWERSAVEMODEOFF(struct vnt_private *priv)
>  {
> -	unsigned char byOrgData;
> +	unsigned char BYORGDATA;
>
> -	BBbReadEmbedded(priv, 0x0D, &byOrgData);
> -	byOrgData &= ~(BIT(0));
> -	BBbWriteEmbedded(priv, 0x0D, byOrgData);
> +	BBBREADEMBEDDED(priv, 0x0D, &BYORGDATA);
> +	BYORGDATA &= ~(BIT(0));
> +	BBBWRITEEMBEDDED(priv, 0x0D, BYORGDATA);
>  }
>
>  /*
> @@ -2306,7 +2306,7 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
>   * Parameters:
>   *  In:
>   *      priv          - Device Structure
> - *      byAntennaMode    - Antenna Mode
> + *      BYANTENNAMODE    - Antenna Mode
>   *  Out:
>   *      none
>   *
> @@ -2315,22 +2315,22 @@ BBvPowerSaveModeOFF(struct vnt_private *priv)
>   */
>
>  void
> -BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
> +BBVSETXANTENNAMODE(struct vnt_private *priv, unsigned char BYANTENNAMODE)
>  {
> -	unsigned char byBBTxConf;
> +	unsigned char BYBBTXCONF;
>
> -	BBbReadEmbedded(priv, 0x09, &byBBTxConf); /* CR09 */
> -	if (byAntennaMode == ANT_DIVERSITY) {
> +	BBBREADEMBEDDED(priv, 0x09, &BYBBTXCONF); /* CR09 */
> +	if (BYANTENNAMODE == ANT_DIVERSITY) {
>  		/* bit 1 is diversity */
> -		byBBTxConf |= 0x02;
> -	} else if (byAntennaMode == ANT_A) {
> +		BYBBTXCONF |= 0x02;
> +	} else if (BYANTENNAMODE == ANT_A) {
>  		/* bit 2 is ANTSEL */
> -		byBBTxConf &= 0xF9; /* 1111 1001 */
> -	} else if (byAntennaMode == ANT_B) {
> -		byBBTxConf &= 0xFD; /* 1111 1101 */
> -		byBBTxConf |= 0x04;
> +		BYBBTXCONF &= 0xF9; /* 1111 1001 */
> +	} else if (BYANTENNAMODE == ANT_B) {
> +		BYBBTXCONF &= 0xFD; /* 1111 1101 */
> +		BYBBTXCONF |= 0x04;
>  	}
> -	BBbWriteEmbedded(priv, 0x09, byBBTxConf); /* CR09 */
> +	BBBWRITEEMBEDDED(priv, 0x09, BYBBTXCONF); /* CR09 */
>  }
>
>  /*
> @@ -2339,7 +2339,7 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
>   * Parameters:
>   *  In:
>   *      priv          - Device Structure
> - *      byAntennaMode    - Antenna Mode
> + *      BYANTENNAMODE    - Antenna Mode
>   *  Out:
>   *      none
>   *
> @@ -2348,25 +2348,25 @@ BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
>   */
>
>  void
> -BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
> +BBVSETRXANTENNAMODE(struct vnt_private *priv, unsigned char BYANTENNAMODE)
>  {
> -	unsigned char byBBRxConf;
> +	unsigned char BYBBRXCONF;
>
> -	BBbReadEmbedded(priv, 0x0A, &byBBRxConf); /* CR10 */
> -	if (byAntennaMode == ANT_DIVERSITY) {
> -		byBBRxConf |= 0x01;
> +	BBBREADEMBEDDED(priv, 0x0A, &BYBBRXCONF); /* CR10 */
> +	if (BYANTENNAMODE == ANT_DIVERSITY) {
> +		BYBBRXCONF |= 0x01;
>
> -	} else if (byAntennaMode == ANT_A) {
> -		byBBRxConf &= 0xFC; /* 1111 1100 */
> -	} else if (byAntennaMode == ANT_B) {
> -		byBBRxConf &= 0xFE; /* 1111 1110 */
> -		byBBRxConf |= 0x02;
> +	} else if (BYANTENNAMODE == ANT_A) {
> +		BYBBRXCONF &= 0xFC; /* 1111 1100 */
> +	} else if (BYANTENNAMODE == ANT_B) {
> +		BYBBRXCONF &= 0xFE; /* 1111 1110 */
> +		BYBBRXCONF |= 0x02;
>  	}
> -	BBbWriteEmbedded(priv, 0x0A, byBBRxConf); /* CR10 */
> +	BBBWRITEEMBEDDED(priv, 0x0A, BYBBRXCONF); /* CR10 */
>  }
>
>  /*
> - * Description: BBvSetDeepSleep
> + * Description: BBVSETDEEPSLEEP
>   *
>   * Parameters:
>   *  In:
> @@ -2378,15 +2378,15 @@ BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
>   *
>   */
>  void
> -BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
> +BBVSETDEEPSLEEP(struct vnt_private *priv, unsigned char BYLOCALID)
>  {
> -	BBbWriteEmbedded(priv, 0x0C, 0x17); /* CR12 */
> -	BBbWriteEmbedded(priv, 0x0D, 0xB9); /* CR13 */
> +	BBBWRITEEMBEDDED(priv, 0x0C, 0x17); /* CR12 */
> +	BBBWRITEEMBEDDED(priv, 0x0D, 0xB9); /* CR13 */
>  }
>
>  void
> -BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
> +BBVEXITDEEPSLEEP(struct vnt_private *priv, unsigned char BYLOCALID)
>  {
> -	BBbWriteEmbedded(priv, 0x0C, 0x00); /* CR12 */
> -	BBbWriteEmbedded(priv, 0x0D, 0x01); /* CR13 */
> +	BBBWRITEEMBEDDED(priv, 0x0C, 0x00); /* CR12 */
> +	BBBWRITEEMBEDDED(priv, 0x0D, 0x01); /* CR13 */
>  }
> diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> index 0cc2e07829c5..3a6294b3bf1f 100644
> --- a/drivers/staging/vt6655/baseband.h
> +++ b/drivers/staging/vt6655/baseband.h
> @@ -46,30 +46,30 @@
>  #define TOP_RATE_2M         0x00200000
>  #define TOP_RATE_1M         0x00100000
>
> -unsigned int BBuGetFrameTime(unsigned char byPreambleType,
> -			     unsigned char byPktType,
> -			     unsigned int cbFrameLength,
> -			     unsigned short wRate);
> +unsigned int BBUGETFRAMETIME(unsigned char BYPREAMBLETYPE,
> +			     unsigned char BYPKTTYPE,
> +			     unsigned int CBFRAMELENGTH,
> +			     unsigned short WRATE);
>
>  void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
>  		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy);
>
> -bool BBbReadEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
> -		     unsigned char *pbyData);
> -bool BBbWriteEmbedded(struct vnt_private *priv, unsigned char byBBAddr,
> -		      unsigned char byData);
> +bool BBBREADEMBEDDED(struct vnt_private *priv, unsigned char BYBBADDR,
> +		     unsigned char *PBYDATA);
> +bool BBBWRITEEMBEDDED(struct vnt_private *priv, unsigned char BYBBADDR,
> +		      unsigned char BYDATA);
>
> -void BBvSetShortSlotTime(struct vnt_private *priv);
> -void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData);
> +void BBVSETSHORTSLOTTIME(struct vnt_private *priv);
> +void BBVSETVGAGAINOFFSET(struct vnt_private *priv, unsigned char BYDATA);
>
>  /* VT3253 Baseband */
> -bool BBbVT3253Init(struct vnt_private *priv);
> -void BBvSoftwareReset(struct vnt_private *priv);
> -void BBvPowerSaveModeON(struct vnt_private *priv);
> -void BBvPowerSaveModeOFF(struct vnt_private *priv);
> -void BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
> -void BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode);
> -void BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
> -void BBvExitDeepSleep(struct vnt_private *priv, unsigned char byLocalID);
> +bool BBBVT3253INIT(struct vnt_private *priv);
> +void BBVSOFTWARERESET(struct vnt_private *priv);
> +void BBVPOWERSAVEMODEON(struct vnt_private *priv);
> +void BBVPOWERSAVEMODEOFF(struct vnt_private *priv);
> +void BBVSETXANTENNAMODE(struct vnt_private *priv, unsigned char BYANTENNAMODE);
> +void BBVSETRXANTENNAMODE(struct vnt_private *priv, unsigned char BYANTENNAMODE);
> +void BBVSETDEEPSLEEP(struct vnt_private *priv, unsigned char BYLOCALID);
> +void BBVEXITDEEPSLEEP(struct vnt_private *priv, unsigned char BYLOCALID);
>
>  #endif /* __BASEBAND_H__ */
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305143241.14118-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

