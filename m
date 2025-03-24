Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14F138DE9
	for <outreachy@lists.linux.dev>; Mon, 24 Mar 2025 13:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742822217; cv=none; b=eD+/oueN3fyWdbxOZIYdtaNyAQ4EC/tUZmDk8Mb3gfuo4YQXw3cR0SLMg+2oO/cStGQMTflXYgeko3JoDib2MYdvbZDr9t0FH3ajv8DKybJX7O82Papd+hcGc5Kh1pgzbYBRsxGu6U54Xt27d4FtiLY5KYumH72jcFm5q3orUno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742822217; c=relaxed/simple;
	bh=0BzVdWAZwgS/kbwCItbhTqku+Dxp2YBo04vVP5bX8wg=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=DDcNmj2IDr8ulaOFLcX168zcOZLNapC7udQXOyFq6FJZCTb2fgXBOLXEYmwh5arwcNE8EjuhGorYO24RsiV5xEg2palV/Fe6SjESXJ6IershvF+2qqXpYxPuao6L/N79q0yOEoOLAc8GtlQyOL5TsWNUuBnfEQ7pafeKkEN+cRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nYQWwyKA; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nYQWwyKA"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43d0618746bso28935475e9.2
        for <outreachy@lists.linux.dev>; Mon, 24 Mar 2025 06:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742822214; x=1743427014; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tc+DC7nQht4uq+LFg1TrVlCtd0t/QCvudCtu5guggqw=;
        b=nYQWwyKAt2VduSHjsiADAnAm7FtQ4aQlJw9P9f+haZ9fAYHYb/X5CI4U+Sfm1GBHkh
         MWBanGnYERu9AoKM9WnHBhzEjEdDtKAUsJe76YPd3r+LGtfwp5Q+DF+QrAoTjtRMHA+b
         NbmP7msQgmhDkd34ZDS1hnW2c1/Q42utzSaJwpIhby76EZsH/iARytPBCE1/FLarXW3F
         4O5UysTV0amkC14smyQAOe4ffkwLFSX9d18g/10wF5KFSte/jfp8efo1deola5qayhXB
         fQBMNsoWUVr0iaJgrYo9ZmjlFj3uE3PZh7T+GJyNoIDJHydzUlVygOdnCO77mKoiMBei
         VS/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742822214; x=1743427014;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tc+DC7nQht4uq+LFg1TrVlCtd0t/QCvudCtu5guggqw=;
        b=G7ooxu4U+lTDXJEkMCQfJRHt8qZKUlrx9PD8XN+ZcahvHu4Kekxlos0fNM1HSZc0LU
         vYF+YCnDXKPCuSgPMqjLCwdzrtbZ8HY4RygMLCjZybY6l/yTackxk5DqZ4A/ncjcL32y
         MKUjn6qkDESv91bQ0/Y8ef+vSXyUh8BfZYdWCo2eHUxihxWGVy4Qb9B+c5p2mZfFPrk5
         KsYftAcvL7aUYje1DtSMf3aQnr/oehM5Y9rutAfwGXKA5GIydYKP/ydHaC+BHwkRPGbM
         6WAEZ8Pse6nr1hCelV2QKx+V8DdbEXCLjtnjtE+Zmm+BUkzbuH8fozKQa9bgmF/wAAFX
         jWZg==
X-Gm-Message-State: AOJu0YyBSAMTqRxfJT3hAWZMIZGSnHzhabr3k0FBv3gd5khNIVSrtxme
	+R7Z/1GBEUMnyHFURTtv3ZharvMvYAqvsbjuRST67hq4YpiFhH8xfBbaXHSZS4M=
X-Gm-Gg: ASbGncvJ4J4tXs92nsDVRZyKz88dCblvtny0fu1fVCMs0dbGHGatdu76txwexu7C2c/
	2lpYQjsUlaT401ztmszJOSXNn7Snu1vmZIiFEfzNJ+lE9DBWq7s5JYCVFcFRTNc47ZOPYat3V9P
	n9o4z+Kkm3vqx1onVcJ6dnpwQ1IKPfszw+CrfMH+Qzen4gZDdIe43t3LBjAlEAe4Eis/j0zS3ka
	MPLBAZFVEk9z1iuWXNuO8Dr58O2TmmMUGxltX5nS3utjV+jyp/BRNMRNWEZA4v2Ma3QLf/52sDu
	YPpW4aGT4YQi03gTWB+RphuuMTNu5eguKD1QCQ==
X-Google-Smtp-Source: AGHT+IEWm/T4kB7EOgzUa6hFfg6nymd1uFT4+Y4Pf1nvcR56HF+WSJOTkz7O9aVgGAvGFg5J+7xNrA==
X-Received: by 2002:a7b:c049:0:b0:43c:eeee:b70a with SMTP id 5b1f17b1804b1-43d5100a2camr94110815e9.22.1742822213717;
        Mon, 24 Mar 2025 06:16:53 -0700 (PDT)
Received: from [192.168.42.3] ([105.112.20.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9ef16csm10852345f8f.86.2025.03.24.06.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:16:53 -0700 (PDT)
Message-ID: <c1b29fc7062b6e6a130de4adb121845d9574a50e.camel@gmail.com>
Subject: Can't Build Linux Kernel from Tutorial
From: Richard Akintola <princerichard17a@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Date: Mon, 24 Mar 2025 14:16:50 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

Hello Julia,

I have been trying to build the Linux Kernel via the tutorial on my
machine to no avail.

This has prevented me from making a PATCH.

This is the Os and Kernel version of my machine
OS: Parrot Security 6.3 (lorikeet) x86_64=20
Kernel: 6.5.0-13parrot1-amd64

Below is the error I got while installing the kernel build

...

INSTALL /lib/modules/6.14.0-rc1custom-
ola+/kernel/net/vmw_vsock/vmw_vsock_virtio_transport_common.ko
  INSTALL /lib/modules/6.14.0-rc1custom-
ola+/kernel/net/vmw_vsock/hv_sock.ko
  INSTALL /lib/modules/6.14.0-rc1custom-
ola+/kernel/net/vmw_vsock/vsock_loopback.ko
  INSTALL /lib/modules/6.14.0-rc1custom-ola+/kernel/net/nsh/nsh.ko
  INSTALL /lib/modules/6.14.0-rc1custom-ola+/kernel/net/hsr/hsr.ko
  INSTALL /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/qrtr.ko
  INSTALL /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/qrtr-
mhi.ko
  DEPMOD  /lib/modules/6.14.0-rc1custom-ola+
  INSTALL /boot
run-parts: executing /etc/kernel/postinst.d/dkms 6.14.0-rc1custom-ola+
/boot/vmlinuz-6.14.0-rc1custom-ola+
dkms: running auto installation service for kernel 6.14.0-rc1custom-
ola+.
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
readelf: Error: Not an ELF file - it has the wrong magic bytes at the
start
Sign command: /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
file
Binary /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-file not
found, modules won't be signed

Building module:
Cleaning build area...
make -j4 KERNELRELEASE=3D6.14.0-rc1custom-ola+ KVER=3D6.14.0-rc1custom-
ola+........(bad exit status: 2)
Error! Bad return status for module build on kernel: 6.14.0-rc1custom-
ola+ (x86_64)
Consult /var/lib/dkms/broadcom-sta/6.30.223.271/build/make.log for more
information.
Sign command: /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
file
Binary /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-file not
found, modules won't be signed

Building module:
Cleaning build area...(bad exit status: 2)
kernelver=3D6.14.0-rc1custom-ola+ ./dkms-make.sh...(bad exit status: 2)
Error! Bad return status for module build on kernel: 6.14.0-rc1custom-
ola+ (x86_64)
Consult /var/lib/dkms/realtek-
rtl8814au/5.8.5.1~git20240527.d8208c8/build/make.log for more
information.
Sign command: /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
file
Binary /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-file not
found, modules won't be signed

Building module:
Cleaning build area...(bad exit status: 2)
'make' -j4 KVER=3D6.14.0-rc1custom-ola+ KSRC=3D/lib/modules/6.14.0-
rc1custom-ola+/build...(bad exit status: 2)
Error! Bad return status for module build on kernel: 6.14.0-rc1custom-
ola+ (x86_64)
Consult /var/lib/dkms/realtek-
rtl88xxau/5.6.4.2~git20240510.b44d288/build/make.log for more
information.
Error! One or more modules failed to install during autoinstall.
Refer to previous errors for more information.
dkms: autoinstall for kernel: 6.14.0-rc1custom-ola+ failed!
run-parts: /etc/kernel/postinst.d/dkms exited with return code 11
make[2]: *** [arch/x86/Makefile:321: install] Error 1
make[1]: *** [/home/laolu/Desktop/Outreachy_Contributions/Linux-
Kernel/git/kernels/staging/Makefile:372: __build_one_by_one] Error 2
make[1]: Target 'modules_install' not remade because of errors.
make[1]: Target 'install' not remade because of errors.
make: *** [Makefile:251: __sub-make] Error 2
make: Target 'modules_install' not remade because of errors.
make: Target 'install' not remade because of errors.


