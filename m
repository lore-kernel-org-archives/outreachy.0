Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF3626286
	for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 23:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710286196; cv=none; b=QmBuBusAfNwCtSPB6DA3Wz+E08TtMwtZB4o9HWI2bcsFXF2es9C0nauAMuhiLAZGnrpVri84rTe+aWjPbRI1ckMHarPvGQuSrFa8AOMh2XC12ug++mEmImh11H5j+zDe0D9LtB2xxfm/t/A5fs9xUV3KAC1k7B4wYrCQ3JW1fNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710286196; c=relaxed/simple;
	bh=bW/jxTgtDM2FoXtQwW7Bby3E593Fr9lckU6hYYXHovc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rjOHpGTLR9UxBj96XEwYZJxNo/k08BdKh4j9W1UNuZHzfkdF8fsEOSVbpyPOnH7nsg36f50wEAWeSeQh/IN2GQgVIC87a/9HNhOxX9471G96r0MJ49EoTtP7V0zPp07NyvEscLRWxzzkzbfpi4AF8IGQ64MrN5uf4OURIEoNAgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nr7tVMey; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nr7tVMey"
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6e6afd8da93so831253b3a.3
        for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 16:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710286194; x=1710890994; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lPo/MwyOjy6vvViv7sRpwtKMZG08RxwSbXz9/h7jcTQ=;
        b=nr7tVMey0jYx/V4mwXne4gsZHMTy1MnpgZ2pGhQ5dm1oc7/iWQxevkcPJKF0PG/gGf
         7BlrASR3JDm27CXsbF5GmYFSQ9HoSpYa5TU5PS8tnjd5QE5gW1QlhKgnhDRq3jMVSEfO
         Ygn+9gy3VyW1iZajHDRQBbTVssSs6aAOCEnn2+FJOY/PjddqS0QDyqF8/F+e5M0wR8HR
         KqiTxpyRiiN3gSsYVdlsR406DXoJsBvDLhu2l4kh8TCAyTLvSdFETEZOrYUJMnDup/mC
         7VPJZ0b/162Uvas4uUg02bRvISv5VcfOaMKDePz/RymK6nCyOVfAWUw8J5XMbsLYV81s
         H3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710286194; x=1710890994;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lPo/MwyOjy6vvViv7sRpwtKMZG08RxwSbXz9/h7jcTQ=;
        b=hjCsfv7GB/fsmUmQP2Cki1/QZk5bieCbxMon9XyVB1qR6f9Wn6CDJzhRwMmgHTaaw4
         /b1JjU8nZvA93uWKbbWMcv0MTcovB9oscwFoBhnovyiYy5wAE+tJEW5t0MDk1Km2p4dX
         3bxbrKDWyCICIz3d8nWzXU2fdiBc5ibXX8TzdI7xPpyO6VrIzkPT8DHXuIjNbX68vVtE
         H7DNKlFi80HIAqGP8WxKIrf0l/6+S3ntKoEWtwujUicnM+pyx5YQyOpTesoz7989ILlS
         p3CohZLSzXmxIALArgSEITnpW6efMbyDq0P5r4ychb3qepBKSmPaqxvY7ZmrWofWGA/k
         W3zw==
X-Forwarded-Encrypted: i=1; AJvYcCXKqEQXXW3ENs4+Em/quNAKbqVkXc4Z2XPBolsoqj16EVjRFXQ32VZwvU4KcM+IoZkUCq2GYS3mYD3BGl9BDQghqbCEek2Efkno
X-Gm-Message-State: AOJu0YzCZ5JKIXk85FfiAO9ij2nLJkd/tvnrY4H9z+Ee8pn0pCuliLlk
	WkgFxTp48GPknamAzcYb2u4IxEvLgqApBPEHBrpYS2NKqutzvmML
X-Google-Smtp-Source: AGHT+IHOovEfybFlCzvIrkRhW1hni8dT7zQ1W/hjqSZoP+a0mv/GdD3Nch2AI8BFUfadz9ErJGTK0Q==
X-Received: by 2002:a05:6a00:93a1:b0:6e4:dfec:1b0e with SMTP id ka33-20020a056a0093a100b006e4dfec1b0emr1085486pfb.19.1710286193903;
        Tue, 12 Mar 2024 16:29:53 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.124])
        by smtp.gmail.com with ESMTPSA id y11-20020a056a00038b00b006e6529c7d75sm6664137pfs.3.2024.03.12.16.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 16:29:53 -0700 (PDT)
Date: Tue, 12 Mar 2024 17:29:51 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: ks7010: fix spinlock_t definition without
 comment
Message-ID: <ZfDlbwCtgdEBOlbp@tahera-OptiPlex-5000>
References: <ZfDHg49k0Og3z9Lw@tahera-OptiPlex-5000>
 <alpine.DEB.2.22.394.2403122247530.3229@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2403122247530.3229@hadrien>

On Tue, Mar 12, 2024 at 10:49:58PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 12 Mar 2024, TaheraFahimi wrote:
> 
> > This change ensures adherence to coding style guidelines.
> >
> > Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>
> > ---
> >  drivers/staging/ks7010/ks_wlan.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
> > index 3e9a91b5131c..94322e2ea304 100644
> > --- a/drivers/staging/ks7010/ks_wlan.h
> > +++ b/drivers/staging/ks7010/ks_wlan.h
> > @@ -468,7 +468,7 @@ struct ks_wlan_private {
> >  	char nick[IW_ESSID_MAX_SIZE + 1];
> >
> >  	spinlock_t multicast_spin;
> > -
> > +	/* lock for synchronize access to device read operation */
> 
> How did you come up with this comment?  I'm not sure that it reflects very
> well the function in which the lock is used.
> 
> julia
> 
> >  	spinlock_t dev_read_lock;
> >  	wait_queue_head_t devread_wait;
> >
> > --
> > 2.34.1
> >
> >
> >
I came up with this comment since this lock is used in function "devio_rec_ind" in ks_hostif.c to ensure safe access to the device's receive buffer.
