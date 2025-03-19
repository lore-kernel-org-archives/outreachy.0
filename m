Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F6D35963
	for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 13:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742389776; cv=none; b=Ib+qFDPCCsbeTHlNtGQeRStxrGlrO1qVLeF7DBZUcpMj8oC6Mj67fogSWP7Y5cyH2yrJ4YU6NDRlz0A4afp2mIZHEu5va+qcubwmG3KzE2iU+YSFFEG2iZG5RT/kMjpOkQjOH3lWBZcs+/rfK7aJqAGaeshVEs4nMNb3vt06nAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742389776; c=relaxed/simple;
	bh=XhfabpGN4BwH8+DEVDpONgK3wv8DQ+4Dj9VhZ8grZ1E=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=qEVHlEGVtaHrx28f5BdnU52gBBra1rrGUK3BaZR5eJKSGb2Ri0qsfWKqLiY57JcgwL98OeX12WGDqdNFWX2PcyRCHAutwRYQNvYoBxP5bA1YHhof35PQ5azgB2JY6HR5RrquL1HjZ+4UsTB+L5ytOuDgovqJPa+32y1dAdoY1xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RXNk/ZB2; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RXNk/ZB2"
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5495c1e1b63so8094913e87.0
        for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 06:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742389772; x=1742994572; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/USGgOMtoEIK+inbxQyD1ukpJtE/6w13Hot01Cv2s2A=;
        b=RXNk/ZB2ibOtYb6bVxpiSC66jNQHJzs0UAbeIHSFjZCIx6eJXelh09jVwpLilQr8Qh
         LeqE2Qv4cVCRiO9qVb6vZon8BgiSVBknYeM3nBFGEwKLIrOInBsGyfcGQD5tut5MmIgw
         sbdonSoNo1S4wE8DNGlH0CPmH6ugdh7EK0Ym5+tCKtfPV2gyMkGc0JcLV1amaQXf9Kjk
         GLM9P2k3FFxMIRUodoXvrYv2DfcnbCby5QcNAyC7wCAhkT4/gXpYoaFvYmD7MX9aYwwG
         aFAf0lRUrqBQAXzDnGnGaBs7oNcAjVUOY+MjWVQfiUupcHXmtKuHU6ytsbUHg2CZ+vhB
         ARGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742389772; x=1742994572;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/USGgOMtoEIK+inbxQyD1ukpJtE/6w13Hot01Cv2s2A=;
        b=R0lO1PBdm57mMAHv63e5jNOjmyyUzqF9g6kq4LRnAEsrB46zQKJ88STOrQd9NouhGA
         OwoCVsrmRXnWdoBid3kKFP/Oy0sim8PWdqWYvIEd+mGMhV+akxPIui2GUWU5nbjNiDV3
         LUAHLRSEKRJLkvl3clKgUgaEXN/Sb3YOhJau3uKuwKM+fYQH/vsBA7+YUlPivR+vKRWV
         kWWDTz2pLrUweuVW3D4dKd/CdCWE+PFFUr1+sIZ0xeqy7bajfiCe475mhbxDxV3dfZvJ
         7JZxrTH+gAz4ZgxriKxTsrEkP3/69F241BFh8tTDL9CveNGTxPCDwETB7CocWIXxFP2j
         EwHQ==
X-Gm-Message-State: AOJu0YzwITnYrbzYfcuSHbu6H6MPScjZtGP3WBzd3yr+IXwnzkNSZPE4
	MO3mH+z1PKlaywklSzoqIlnbynL3GAdpncyFIIpn4n69MTJ36/wNOi17AdfSTFLBDYtans2NrF8
	NelViAtR9DMOik7YYs7X622jIGUZfuyyNUV0xvg==
X-Gm-Gg: ASbGncuVlhx1RusfQ4jZAYBYkkH3WmTzpwbUoet8SJe0z6ZyiO5olRnksilej6mIjMo
	1F+GA4vLuC9s37t+A6MDEa8062nKRLCYG7s3lq6bhr86PBvPznmTC/Gp5VV1pT0EaHUkchv4DL8
	gOesxNYpMxWOCPaQ43Dijxv0PucQ==
X-Google-Smtp-Source: AGHT+IHnzo/AjMgFFSL8fKkSBY3wUUz8cVK0LY0tGC/VFd2Y6DecuKs0Wu6/fOh/XwBB6viT/1M5MHbzLHQRxEq2xaE=
X-Received: by 2002:a05:6512:ea5:b0:549:9143:4ce1 with SMTP id
 2adb3069b0e04-54acb1a38e0mr1233591e87.3.1742389772284; Wed, 19 Mar 2025
 06:09:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Busayo Dada <toyinoluwabusayo@gmail.com>
Date: Wed, 19 Mar 2025 14:09:21 +0100
X-Gm-Features: AQ5f1JqjVE4n4ak8fNkVwwceeVjZHEwDMuMEiHZbT8wmAqJiAvVRFpzAtF9eh5g
Message-ID: <CANn_dnJ141ZGC5yZkWecbSODpjwQXG7rw1zjqH9G7MuDJbyi6w@mail.gmail.com>
Subject: Re: Welcome to Outreachy 2025
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julia,  Thank you for the warm welcome! I=E2=80=99m excited to be part o=
f
the Linux Kernel community and look forward to learning and
contributing. I will go through the First Patch Tutorial and start
working on my first patch.
