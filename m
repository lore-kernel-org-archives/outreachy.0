X-GM-THRID: 6806903169675689984
X-Received: by 2002:a0c:edc5:: with SMTP id i5mr15460585qvr.16.1584860651657;
        Sun, 22 Mar 2020 00:04:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8d49:: with SMTP id s9ls2580183qvb.10.gmail; Sun, 22 Mar
 2020 00:04:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsvAgg+082fFCFa4bqxJ+WTEOa5N87M+BWkCt9ZiKSB1n11rJtUMkIgELc/BJWkPMAtnfXW
X-Received: by 2002:a05:6214:11e1:: with SMTP id e1mr16053526qvu.176.1584860650484;
        Sun, 22 Mar 2020 00:04:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584860650; cv=none;
        d=google.com; s=arc-20160816;
        b=b7Rakg5Q4ffYgNEy+m0expmg9ETvh0ixuxNixYsTG+OPOqAWDLQ++JIC1GPWQ4lo8L
         AViOaviTn2Y3gbeiTRGf8tex3PzvlvDHKm85d2peRq4M/YoNgo4gtFTIUZgybaHIebY6
         R/RZwCIdhBvufoG4w3PdkqcXMqvxN6B8fNxJn0i85U7Z3RxPb2mAuGoW1x+rkBkBDsDx
         zsTMNWrVOWbK2IH6mBXerWky4u1rJhSWkrDdCzhF6/59uJdEzSiPg7j3IJg/LZ9HcbPN
         7fcPZdfbSsvF5iOI4SvIzzQn65ZrmRm4e8bIoU8rHN06Y5OtMhjrnHrp1lN0tQ9AUdGn
         U8vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0l0JgS/c9Evr/HNo8KrdyhXozIvHVDg2996aFU5LSIc=;
        b=pTaAoOyWp96EzhzcdV3AXuzpWQ+xjd3Kc+oNPhPW8NWLiC3bR5hSbezFf4P2/SYThT
         JftI21pYANcs8R42X9Pb+W6VbUm6izRG2Rh+rWODnoRA0OHDMPKo55hRID/10gctykTE
         83fpa2nVtIzH7ZcbITTpV+UBM6Aq+JqdGRr85XyyMWhVi/qOiHUwpkmbAYG/zoA7AD0O
         OW+dXlpfOrZcfSxcXoBot9wyq7MR48z/hmmpFSU2tCma7gKdR1PRKJuXmLIoYZvFXcQj
         K6bp1/2JUiENcq77Lg/3R9fxX+Uhs1gmeUTEGohJYQu5LAHQnQi7Cky39IrvcIw3aPHZ
         xZPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CRFNVS21;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m6si693892qtk.2.2020.03.22.00.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 00:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CRFNVS21;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9F2B320637;
	Sun, 22 Mar 2020 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584860649;
	bh=AYxidWgMlHwZC/akTnTAnHiBKZiTIsAPxBIeA3ohg6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CRFNVS21HB0DDs82TT4AGWpltwiqlc3Ap3kjj6uSACgVtBdp2R5g5T+/U6CGiBOxd
	 7hJj0YVk/pH2OcAgk90Yq5WH/1ypbPMWDZkeGWZjGSSyjEhmbQgCD5cDE+9vuankFT
	 IJcBSIAuvsx3FnddAvcRxSd5twJ+v/mLvDXGZdjo=
Date: Sun, 22 Mar 2020 08:04:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: Re: [PATCH] staging: comedi: ni_pcimio: remove old unused code
Message-ID: <20200322070401.GA64528@kroah.com>
References: <20200322054035.GA9669@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200322054035.GA9669@deeUbuntu>

On Sun, Mar 22, 2020 at 11:10:39AM +0530, Deepak R Varma wrote:
> Found multiple #if 0 code blocks that appear to have never been used.
> Additinal comments around intended functionality may be introduced
> separately. As these commented code blocks do not appear to be
> ever useful, they can be removed.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> ---
> Resending patch for review. No changes since last version.

Last time I thought I said to leave these as-is as they document devices
that people might have and would be able to add to the driver easily.

So I'm not going to take this patch this time either, sorry.

greg k-h

