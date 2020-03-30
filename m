X-GM-THRID: 6808322643446464512
X-Received: by 2002:aca:5514:: with SMTP id j20mr511271oib.132.1585551890721;
        Mon, 30 Mar 2020 00:04:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls7148183oig.7.gmail; Mon, 30 Mar
 2020 00:04:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvFbp2QouJ3kfa9mk0Fjzqq+kO1WRd+oFfxBJqgyigly+jfS924LYJ2tXeG9WVVJ4BinkJA
X-Received: by 2002:aca:5345:: with SMTP id h66mr6880690oib.110.1585551889657;
        Mon, 30 Mar 2020 00:04:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585551889; cv=none;
        d=google.com; s=arc-20160816;
        b=O5sjBBJr3ZD114Ci8wPNc3rXBADC8Y0V8tKpBlnbEdozCfLApEWyKcrtLTbiPW2DEc
         c3XNpgZFniAoBWgbZHck4BjEmS9FKe5altkL4zAdv0t0X8SMsBLuSPMgTV0p3xK3OKT+
         7KJKxrPnJ6dvEujSd4ZFgNwL7H0Qo/BGgAYrIu+MCcQEvNzH4nMuZ2QuJk6QUiVmsN1y
         Te4AkfoLLvlWd09EwBTr1GsSDpK0dbIvH+HFqJ9Q0CGHNQ/U16HZhgLokB8iQbwNZZlP
         YOW/gEYhziQ3LhNYsV8Eb3tR5ZGop7RtuccMLPM9sz48QZz1ONxSAmt2rkTfbdGWP5KU
         cEow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=DcYXBK9T0tL3/4tT6Ze5WzFP/q8tfYe++I66B6Uqb68=;
        b=zQu0TA7iXJLUGqTnChyH9VXqxjfUyv3eOz4E8K3n7gVtHNRqAbmAy7HWt/7+CGWJam
         KnkqnX3y2okZlcohDkiuGkxEV6SP4y2/YBeBDeIozKF3RPzL6FUUMU/Nq01mRcsAdiJq
         SZxSUcw9LfTcgGt8+GzCzMhUbQMUx5YXWvMrGLTAtqTYUgk/YKz9VeBy2H2jxbDt8L/S
         KD+D25IAuddiIy+guFRlfiQtMaEoozFF4A/Es6Pc8ZnWWme6xbvHvpT+LMEE0SMimTaa
         gabdIPBVgaFGoCmeFbCZ3zkv6D1YjtTelSusYsZwIvOBSONPuqhYc4XcLXpBFLyrJGpK
         5uAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LBHDBL4y;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id e21si1304834oob.1.2020.03.30.00.04.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 00:04:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LBHDBL4y;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585551888;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DcYXBK9T0tL3/4tT6Ze5WzFP/q8tfYe++I66B6Uqb68=;
	b=LBHDBL4yF9SAElMtonc9hdlo1HdmBoTRS2elW71Ov3yGEIJMuZb/yTypxkDZarq0Yx2vI1
	3m0ltHo1P4qawghkdCv5Wli40TlMfalYr2ZmMCOzuXIpimUMJLQmtUeU3SbcCDkCOqsKa6
	LWfcxskSGEThOQTakAblF1f3gzLxjTA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-474-StupAFgtPwaxiZHxJXWHzw-1; Mon, 30 Mar 2020 03:04:47 -0400
X-MC-Unique: StupAFgtPwaxiZHxJXWHzw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A45311005509;
	Mon, 30 Mar 2020 07:04:45 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B8F31001925;
	Mon, 30 Mar 2020 07:04:43 +0000 (UTC)
Date: Mon, 30 Mar 2020 09:04:37 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, julia.lawall@inria.fr,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [patch v4] staging: vt6655: Replace camel
 case variable names.
Message-ID: <20200330090437.595fff26@elisabeth>
In-Reply-To: <20200328043803.40213-1-briana.oursler@gmail.com>
References: <20200327090401.GA1669531@kroah.com>
	<20200328043803.40213-1-briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 27 Mar 2020 21:38:03 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Replace camel case variable names with snake case in baseband.h and
> dependencies.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
> 
> Changes in v4:
> 	- Remove spaces added to revision list
> 	- Modify spacing in comments to reflect previous.
> 	- Change w_rate to tx_rate to remove Hungarian notation.
> 	- Change tense of "replaces" to "replace" in commit description.
> 
> Changes in v3:
> 	- Return rxtx.h dependencies to initial variable name state.
> 
> Changes in v2:
> 	- Align comments, align parentheses, remove Hungarian notation.

Here, it would be nicer to credit/reference people who suggested these
changes.

> [...]
>
> +++ b/drivers/staging/vt6655/card.c
>
> [...]
>
> @@ -659,7 +659,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
>  	/* Set to Page1 */
>  	MACvSelectPage1(priv->PortOffset);
>  
> -	/* RSPINF_b_1 */
> +	/* RSPINF_1 */
>  	vnt_get_phy_field(priv, 14,
>  			  CARDwGetCCKControlRate(priv, RATE_1M),
>  			  PK_TYPE_11B, &phy.field_read);
> @@ -669,7 +669,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
>  
>  	VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_1, phy.field_write);
>  
> -	/* RSPINF_b_2 */
> +	/* RSPINF_2 */
>  	vnt_get_phy_field(priv, 14,
>  			  CARDwGetCCKControlRate(priv, RATE_2M),
>  			  PK_TYPE_11B, &phy.field_read);
> @@ -678,7 +678,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
>  
>  	VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_2, phy.field_write);
>  
> -	/* RSPINF_b_5 */
> +	/* RSPINF_5 */
>  	vnt_get_phy_field(priv, 14,
>  			  CARDwGetCCKControlRate(priv, RATE_5M),
>  			  PK_TYPE_11B, &phy.field_read);
> @@ -687,7 +687,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
>  
>  	VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_5, phy.field_write);
>  
> -	/* RSPINF_b_11 */
> +	/* RSPINF_11 */
>  	vnt_get_phy_field(priv, 14,
>  			  CARDwGetCCKControlRate(priv, RATE_11M),
>  			  PK_TYPE_11B, &phy.field_read);
> @@ -696,42 +696,42 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
>  
>  	VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_11, phy.field_write);
>  
> -	/* RSPINF_a_6 */
> +	/* RSPINF_6 */
>  	s_vCalculateOFDMRParameter(RATE_6M,
>  				   bb_type,
>  				   &byTxRate,
>  				   &byRsvTime);
>  	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_6,
>  		     MAKEWORD(byTxRate, byRsvTime));
> -	/* RSPINF_a_9 */
> +	/* RSPINF_9 */
>  	s_vCalculateOFDMRParameter(RATE_9M,
>  				   bb_type,
>  				   &byTxRate,
>  				   &byRsvTime);
>  	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_9,
>  		     MAKEWORD(byTxRate, byRsvTime));
> -	/* RSPINF_a_12 */
> +	/* RSPINF_12 */
>  	s_vCalculateOFDMRParameter(RATE_12M,
>  				   bb_type,
>  				   &byTxRate,
>  				   &byRsvTime);
>  	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_12,
>  		     MAKEWORD(byTxRate, byRsvTime));
> -	/* RSPINF_a_18 */
> +	/* RSPINF_18 */
>  	s_vCalculateOFDMRParameter(RATE_18M,
>  				   bb_type,
>  				   &byTxRate,
>  				   &byRsvTime);
>  	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_18,
>  		     MAKEWORD(byTxRate, byRsvTime));
> -	/* RSPINF_a_24 */
> +	/* RSPINF_24 */
>  	s_vCalculateOFDMRParameter(RATE_24M,
>  				   bb_type,
>  				   &byTxRate,
>  				   &byRsvTime);
>  	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_24,
>  		     MAKEWORD(byTxRate, byRsvTime));
> -	/* RSPINF_a_36 */
> +	/* RSPINF_36 */
>  	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
>  							   RATE_36M),
>  				   bb_type,
> @@ -739,7 +739,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
>  				   &byRsvTime);
>  	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_36,
>  		     MAKEWORD(byTxRate, byRsvTime));
> -	/* RSPINF_a_48 */
> +	/* RSPINF_48 */
>  	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
>  							   RATE_48M),
>  				   bb_type,
> @@ -747,7 +747,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
>  				   &byRsvTime);
>  	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_48,
>  		     MAKEWORD(byTxRate, byRsvTime));
> -	/* RSPINF_a_54 */
> +	/* RSPINF_54 */
>  	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
>  							   RATE_54M),
>  				   bb_type,
> @@ -755,7 +755,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
>  				   &byRsvTime);
>  	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_54,
>  		     MAKEWORD(byTxRate, byRsvTime));
> -	/* RSPINF_a_72 */
> +	/* RSPINF_72 */
>  	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
>  							   RATE_54M),
>  				   bb_type,

Wait, why are you changing those comments? Those indicate 802.11
bitrates and the particular 802.11 amendment (802.11a, 802.11b) in use.

-- 
Stefano


