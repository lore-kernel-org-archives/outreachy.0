Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C8E352F9C
	for <outreachy@lists.linux.dev>; Tue, 10 Feb 2026 10:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770718798; cv=none; b=YQL30cZ6sJDYJdva/b9brirqudiQtqzKkHkHGKKs5/mqzhc5Xf7UKpTEPXUxMTuf9jlU2UB5J01UNgn27HX+9O4Q1p8wDfCmgx6Z5f1fsq8if7g4eahLVTzHbslPlNpSnJmhQmnNIx1kDSth5sb/IyIzuPtjrBt3He4M3xWYHvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770718798; c=relaxed/simple;
	bh=a6vGBLE1u2hj1foMl06tHlMugPoZCqkWUUayvZUGFEM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kU2ORAmtn+9RIH3LR215qr/QdKVjswrtmqX6hfylTfoc3PNXixhT0YELpR2GrKJODKCkh+mMp2AeGe2D8DbmWKuFHhYCKsB3QFbCFbmAd2qzdhXumlmMaapmKonA+1RrHmTQuoweI8gQWSgSSfkTj0tKXI/HqPXd56DWfCs6ZRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j6finY4u; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j6finY4u"
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-482f454be5bso54232075e9.0
        for <outreachy@lists.linux.dev>; Tue, 10 Feb 2026 02:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770718795; x=1771323595; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fPmvvfUUyQ4LIE9KNYKtxQHjVRED/OZWx09lHdwFmBY=;
        b=j6finY4ujcG2OOcus+jOoBp0JGCgGIBrXRpo2DDFcLzDmJ8QIX57w5rNmiHLG5rfGC
         jr8Q8/+dLnY6JUUsq0seVq+zwGZ9Uvdx843oFof71Tf+fVCMN5U2vHOWhPzwg1Na99CQ
         /imZqoAvNUYUOazvqKHIsf0AGQjR3KG/5CqVNtIjR2Gy6NC26aXc4X6cExOc/hHhl52e
         aU1oo6I3E0aHN2RfyPqIcy38HM+4KPl2XN2YqZx5h8YsWb2j2hrm77chsV1RSxuw98qg
         LKO6fAr/DoU3jmdnaYY96vVD9FIzTnOMc7W7ue2eL/RgIvXqmhFuWy3g1fiE4fOkFBDf
         Uqsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718795; x=1771323595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fPmvvfUUyQ4LIE9KNYKtxQHjVRED/OZWx09lHdwFmBY=;
        b=MOdzbUso60YIJZJDEv1+75qDD4XA/3hk7qW8DZ3nmwknUkUYVpBfZdAWDLro9n4jEC
         WrofViwDvVxpoqZVBHh12XvinxGsCc+OMx6mMFlHhgTTmDHMDB03/chFlijAXqZ4pGUv
         rGi0ZifjeYC8Bgw6TZwev5CHeZlS0HlJ6+k4BG7trd8bfWN7Sw/DNO89nM2uQaeGsLNg
         r9cH8gzdOnLAfLARGcMJQ1V6YpD/K1z3Quhls++YLN4VeOGbkI9VstiOTfqCvHgSc9EF
         s566IcxWq8JdCukLOKwNhbLYXi0dW4CV/rgLt7V4m8EmX01s4/q5qF/MVO5RzyGk8KuR
         TCtw==
X-Forwarded-Encrypted: i=1; AJvYcCWsfR9xEWC94Y4CInfAAeL7CZVV3Ixh4t6RO5YQyZ1Gy1/T5TjrQes8cjZ8yD0gKJqptdxJ0osMBr8=@lists.linux.dev
X-Gm-Message-State: AOJu0YxLqeG7c32R0c4ydyPBcrxbMFXN4ZpR4A6BtC4Apkhkm6fvA8VO
	umebi9+pb1/OIo4zgudpAHDgs/zVRG1eRC1Neu4VHR+TxFyT47AIUFIb
X-Gm-Gg: AZuq6aLZLwPk9JKkamB2p1MSMBFO2+hN58X0yeZCFZ2tHVORZ2cb3eg9STl8w51oESf
	+x2cMh3dDCKJmS0D6Se6JE7H5ykKkVuoPoaU3VNXdGSJhDZ5S2naS5cDVtX9HEC7YnsC617QKpp
	0V4IntIxaDadePBP/oNcoM30+w1tJ5mzF8OpXUi8Uy1HilQJiv85kfxdsbu3MFkhNusdxGamok3
	+S1cN++32BTr6v33xicPaRCjPWXnWoVit2sWbrlAt/plIY8cgz2UzXbEAM7WbkcQ10xJ91MrKMK
	RRGGK908qPB02vsfxcp9ruU53tqv3LRE1a2WJM7GdmP0w9GCbEZbZG+x+CYUrBf1Ksea+SfTsr1
	Y5UFdWO5DbiOTd2g96bQxOqU3ZfRxA7X4xRQXnYkip4ap2bcgRTh2961RjUTPdKP4R2bb2KvZGk
	nBL5GMAt3tg6pQCns2ir8lekS+bsPwSNWzpBRDxyXXd3vfmxdcJ1x0a2d1f4EMOQz3
X-Received: by 2002:a05:600c:6c5:b0:47e:e48f:43b5 with SMTP id 5b1f17b1804b1-4834ffb25fdmr14935985e9.18.1770718795213;
        Tue, 10 Feb 2026 02:19:55 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436297462a8sm30950423f8f.30.2026.02.10.02.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:19:54 -0800 (PST)
Date: Tue, 10 Feb 2026 10:19:52 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Yoelvis Oliveros <yoelvisoliveros@gmail.com>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: octeon: type change from uint<bits>_t to
 u<bits>
Message-ID: <20260210101952.631bf50c@pumpkin>
In-Reply-To: <aYq028TNyXQWZ_v5@home-pc>
References: <aYq028TNyXQWZ_v5@home-pc>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 10 Feb 2026 00:36:31 -0400
Yoelvis Oliveros <yoelvisoliveros@gmail.com> wrote:

> Runing the ckeckpatch.pl on the staging/octeon driver they where using
> uint<8/16/32/64>_T as type declaration and the checkpatch.pl was
> putting a [CHECK] flag on those and that they should be change to
> u<8/16/32/64>
> 
...
>  	struct {
> -		u64 bufs         : 8;
> -		u64 ip_offset    : 8;
> -		u64 vlan_valid   : 1;
>  		u64 vlan_stacked : 1;
> -		u64 unassigned   : 1;
> -		u64 vlan_cfi     : 1;
> -		u64 vlan_id      : 12;
> -		u64 pr           : 4;
> -		u64 unassigned2  : 8;
> -		u64 dec_ipcomp   : 1;
> -		u64 tcp_or_udp   : 1;
> -		u64 dec_ipsec    : 1;
> -		u64 is_v6        : 1;
> -		u64 software     : 1;
> -		u64 L4_error     : 1;
> -		u64 is_frag      : 1;
> -		u64 IP_exc       : 1;
> -		u64 is_bcast     : 1;
> -		u64 is_mcast     : 1;
> -		u64 not_IP       : 1;
> -		u64 rcv_error    : 1;
> -		u64 err_code     : 8;
>  	} s;

As a separate issue, what is the purpose of all these bit-field structures?
You can't portably use C bit-fields to map hardware registers or network
packets.
It isn't just byte-order, the 'bit order' can differ even for the same
endianness.

It also doesn't seem ideal to base everything on u64.
The (aligned) 8 bit fields should really be plain 'u8', there are places
where it does make a difference.

	David



