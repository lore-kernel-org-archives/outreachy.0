Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E52D1170A
	for <outreachy@lists.linux.dev>; Wed, 13 Mar 2024 06:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710312029; cv=none; b=Qpe+bDjUA8gBsEYf2YZ3AWj83WZEm1rnxwoO+oF1IIRu9Qazth9l7q5vl293yq9Hz4ZFNG8xy7KJuXnvqUgREcQCeOX0OFE3AEefTFdjLkw/2+xR2KvuHWUhuoMSK1e2bj7hxS3b2yCIoIrz9PnDcvdwLVQArtPHahgbmFxk+iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710312029; c=relaxed/simple;
	bh=qHh0x60RSzQxJzpxPOSxZ065sjT9emxs1HfiQg7X0/8=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=fn4c7En+f//oLkwWTQplnPaagBwly4aFNO32WXxzXgzJcuSuCFD2WBJEvWJIbUhKviB2Gi6ndRQlql+W88Fq2Be+yGejGTSCUpPruVIpY6Bfa/n04DT9EGRCijZfGvzXF10yVODCSep2q3H8vHeVgpH0UkEy/SzVVzth38aQX0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=EUuqHcsO; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="EUuqHcsO"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=F+QBPQ0j+lAx2RlOBiKbpctkYjo0jITnBG2VFVHJGvQ=;
  b=EUuqHcsOifVu1QXmSYUmCoOzjWiBWkwnmWt8b9drrXa/4jDlARufI7K/
   C3KAq6hRJsIVdTm+G9ZlmPtbeJp7kNOP9cOX2WruXEqOqAlltigjCA9UE
   zZiscmwsR8MMhLUSioMK8TlT8YfdYye8HoCwTvR9P1DlpEqa+hgYOGa6e
   k=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.07,119,1708383600"; 
   d="scan'208";a="156368425"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2024 07:40:23 +0100
Date: Wed, 13 Mar 2024 07:40:22 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Tahera Fahimi <fahimitahera@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: ks7010: fix spinlock_t definition without
 comment
In-Reply-To: <ZfDdQDvGglrAX0Kq@tahera-OptiPlex-5000>
Message-ID: <alpine.DEB.2.22.394.2403130739150.3473@hadrien>
References: <ZfDHg49k0Og3z9Lw@tahera-OptiPlex-5000> <alpine.DEB.2.22.394.2403122247530.3229@hadrien> <ZfDdQDvGglrAX0Kq@tahera-OptiPlex-5000>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Mar 2024, Tahera Fahimi wrote:

> On Tue, Mar 12, 2024 at 10:49:58PM +0100, Julia Lawall wrote:
> >
> >
> > On Tue, 12 Mar 2024, TaheraFahimi wrote:
> >
> > > This change ensures adherence to coding style guidelines.
> > >
> > > Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>
> > > ---
> > >  drivers/staging/ks7010/ks_wlan.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
> > > index 3e9a91b5131c..94322e2ea304 100644
> > > --- a/drivers/staging/ks7010/ks_wlan.h
> > > +++ b/drivers/staging/ks7010/ks_wlan.h
> > > @@ -468,7 +468,7 @@ struct ks_wlan_private {
> > >  	char nick[IW_ESSID_MAX_SIZE + 1];
> > >
> > >  	spinlock_t multicast_spin;
> > > -
> > > +	/* lock for synchronize access to device read operation */
> >
> > How did you come up with this comment?  I'm not sure that it reflects very
> > well the function in which the lock is used.
> >
> > julia
> >
> > >  	spinlock_t dev_read_lock;
> > >  	wait_queue_head_t devread_wait;
> > >
> > > --
> > > 2.34.1
> > >
> > >
> > >
> I came up with this comment since this lock is used in function "devio_rec_ind" in ks_hostif.c to ensure safe access to the device's receive buffer.

OK.  That doesn't seem to be conveyed by the comment.

Since you are replying to my message, it would be better to put your text
directly under my message, and not at the end.

julia

