Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4A9126C02
	for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 14:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742307458; cv=none; b=U/KzAuJLuCJBvl2vnqO9it4B6TAVbUm/T3sMxQKzpMRrxFlW7U78NkheFGwx89B3u1ErFwgjSsUmw9ujMzF1y8p8hqZboEEIzGdUpAglEy0c4n0poTuXd9nt06hphMdtHQQ0D8Yq/m2PZYpdBvsq+p1ro/745diM5wZUY5OOYQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742307458; c=relaxed/simple;
	bh=ninTeJKvZFFaWOIcvhtggfzwkgAQXhUT3FoPvKyDdr0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:Content-Type:
	 MIME-Version; b=d/byb5uiYCJlA3pep4lxkig1c5p/Okx3Z/8j5jj4PhwlNouXr8QyP1ChS33pV1HUytHncR+YdWlQdNqdNrhojLCH/TdjqvRzQoimFOCcY6q7qeLevTn6B1SFyZXafBw0p8RxolWq2z8TdpPRxagxI7R97a7rhUMMvjPNVTsYSPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S0Ai33O2; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S0Ai33O2"
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-39129fc51f8so5037610f8f.0
        for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 07:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742307455; x=1742912255; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:in-reply-to:date
         :cc:to:from:subject:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ninTeJKvZFFaWOIcvhtggfzwkgAQXhUT3FoPvKyDdr0=;
        b=S0Ai33O2nFfVrhugAclP+DiTPlyZ5CXVO0sN1uvt4g7CePPF7eQdDQc8GO2G7kCaLW
         QH/Ct3F2V7DesrMrDn1a7xjiqFpENgpZcp6j9/zcUsPMZl/va1grgMrRK/QEDic/hVfk
         OylL29V17qePflibRmSGrte+AUDwOnJkS/uQoqjVIqI+6wVb34lgtFFKvmPiN3flhh4S
         NS9mwtG9fNnNkYutFlrZxcCeYi21vS6u56hZEE6BVF1ilVr5eQIzWIif4A1px+WiQ8mh
         wAJtZYcO9QdCclJIx19g3TPokFQ44Kdunu6OU5vP44eg22GN86WnHEqQ5vi6d8cIl1D1
         o1mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742307455; x=1742912255;
        h=mime-version:user-agent:content-transfer-encoding:in-reply-to:date
         :cc:to:from:subject:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ninTeJKvZFFaWOIcvhtggfzwkgAQXhUT3FoPvKyDdr0=;
        b=Z6UC3ABrNBsdG7MpBjE3rhneo8Tad74H3Ucj9Y7AtZDwfKWttRLabmWurY/qc8Fy5w
         xPb8HjWvdNlZBZ3hMo3ZAXosJAw7O+dti6QiwmQV05BxwLhNPx6uI7smLCgXGQw2ey3y
         TnPvyo9GsEYnd10frppHFkZ6SsSPmPGqCP03QErzOa+iZHxjtoav4jCkCxHYSP6jDSez
         MdbVYwguIYp4scju9N55FTrYD2rgcp/C7kKb2o6kcaAyjygT0p2zZWyznkBXh//2c2ba
         rupjG/S/1EhXGwPZshxS9/spH9H9V/nsMppUYQlWFXS1okAd1xy0CTcbw3KCvy4hpsZT
         q8Ow==
X-Gm-Message-State: AOJu0Yy9TFx4sv4jQG0Zmk9aDTGjK0s8Faqijett1HxsJbP67N0J21DZ
	kgZd6vU6Bpxt9lXn0Nbk6U3hh4D/GtwUkVInrp1si/1OrKHf/G50Zjeho8M4TLxndw==
X-Gm-Gg: ASbGncu/1zg+VbADSYrgm/euhzdukA2MG/Pkt13cqJYgRB+DKOy7V+j2PLR/yMXANSA
	hmgToXBGOLQfl7ig3JVsqbpJf9HuVMU2y0NuyBJ7VhTiDKWm2FcAUTPf2bLqphD+w8zk7F8y/C2
	AGqqXwx+MR3mUA6k6xtFCy2Ra/nTPQflZ18xCOP8NZ9p8t9porKJQrM3Gdh2xWTY1lzn0YU1Vt1
	xI6npkA5fyU5IkwbHUaAoMI3V5eSe+zYaXL75tBhIhtHwf+Ju2RnT+RtJwelVbHehrhe/EHcfpL
	2XimUCymAppPbbiAn0NI7KMeFzfJkSblpBh1RnfwNWtz7121IqIfeUmMXecMwuEmN+Wk3w==
X-Google-Smtp-Source: AGHT+IGTf5re7kmco++y1A56QEV2TL5kWCLwswpEigF9gxDDCZEzR9iSWWvysCTnpPhf5XbOnUb1aQ==
X-Received: by 2002:a5d:598b:0:b0:391:3406:b4e1 with SMTP id ffacd0b85a97d-3971d23792fmr16889859f8f.15.1742307455044;
        Tue, 18 Mar 2025 07:17:35 -0700 (PDT)
Received: from [192.168.42.253] ([197.211.53.79])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d1fdda38esm140097165e9.8.2025.03.18.07.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 07:17:34 -0700 (PDT)
Message-ID: <4bdfd49457f9d2ca69240344bdf0e6f42953a1d6.camel@gmail.com>
Subject: Re: Welcome to outreachy 2025
From: Richard Akintola <princerichard17a@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Date: Tue, 18 Mar 2025 15:17:32 +0100
In-Reply-To: <cf324d24-faa2-faf8-bcbb-3f22a7b7ba8d@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

Thank you for the warm welcome Julia, I look forward to making great
contributions during the course of the internship and beyond.
