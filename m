Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A581C7B
	for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 09:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=xoN0C8G7bsadaGwtl1PbsIQ0IwhCqjc451pWFYecqzE=;
  b=ivC0d/zUl68qTCF3jnFOaT1Qf4esAwPPBf2iWJ6naHbjZz3/RX/RYr24
   FWcCUzf4zEspB5RAVygqhMEgNSqKZziPMelH3kFzh+ktOQllkDMEnd5oU
   1BVBAWXIm/apo8bRR1DTbDc1orjbLEMUs+C88ZoqRf9qrE5jYgbNsrDye
   0=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,252,1673910000"; 
   d="scan'208";a="96628399"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2023 10:01:07 +0100
Date: Sat, 11 Mar 2023 10:01:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Help in loading modules
In-Reply-To: <20230311085922.GC11242@ubuntu>
Message-ID: <alpine.DEB.2.22.394.2303111000320.2802@hadrien>
References: <20230311085922.GC11242@ubuntu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2023, Sumitra Sharma wrote:

> Hi julia,
>
> My module pi433 is not present int the "lsmod" output. What should I
> suppose to do next.

Maybe it is not compiled by your kernel configuration?

Please include the list in any messages.

julia

>
> ##
> Module                  Size  Used by
> psmouse               204800  0
> hid_generic            16384  0
> mptspi                 24576  1
> scsi_transport_spi     40960  1 mptspi
> mptscsih               49152  1 mptspi
> mptbase               114688  2 mptspi,mptscsih
> e1000                 172032  0
> ahci                   49152  0
> libahci                57344  1 ahci
> i2c_piix4              28672  0
> pata_acpi              16384  0
> usbhid                 73728  0
> hid                   163840  2 usbhid,hid_generic
>
>
