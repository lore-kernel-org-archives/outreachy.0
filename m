Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C351F601
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 14:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YGhMztUs"
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso25166351fa.1
        for <outreachy@lists.linux.dev>; Fri, 06 Oct 2023 07:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696602211; x=1697207011; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9HKE1fuR6iwa/W8mbDA02ucvMgr74jICiBVX5A1qpHU=;
        b=YGhMztUssyHlMbZb7Q6u56+Q7OMqHr0LZOZv41qni/jBpJshbI30UyLvfHLh3GE2fw
         88BauZ0/EG9tijTynUixcTgTawTzp2zzTiF0Eht+dJRR1lR0tpZapoO55bylIdPuerrz
         d9ItEEPhnshR5g+EqdEiuZ0GazkAOqAdfMGHoYQd9GWZ527kwu575Tiinal6FiM8GB4A
         Ryii5EnfYNRs0uHkZCoZlFjLt8FM6zz0xrzJcHMKUAPIEFNUkraZCUTUf1VtLbgaS+bo
         0X4HuCnHVmcA9hifleYmPE4FPmLfpstTnCQIkRZOvN4rSJaeCfMMJosA+OFvkrdgW2AK
         3UjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696602211; x=1697207011;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9HKE1fuR6iwa/W8mbDA02ucvMgr74jICiBVX5A1qpHU=;
        b=cY68OEUQxY1a042qyZs5Z1Ck4VaQ0PtCf/SrjHvt+hV1xglWTXOj11RYmyiFseTTho
         Kg/eMfXQSf2RmyUfaHPlVBjyr2HzYMGoATO1rXeDUvpRFR/evPOzRRJmVRfKzWsd0hDU
         lM694VuasWEsBrHQxcxFCbaJ6sCe/e1fWb/7j99/kleJKsDHIYB0LZHSfUYxyz3U7lKn
         RrTrBBJBYCs5J2ZMSzNESngG7FaiDnHViIe3ceOJeetM0Ms5DachPrn5sNDmiHkhO3bG
         9slAQ+D8WbIWMcTVPPzM2Ve03DbZ2d1EjMP94N2LHp4Oo2qGKNg3oDsREyBt0vB57Y2C
         j4lg==
X-Gm-Message-State: AOJu0Yw7S4o6UVMIYt+uc8IOUP+HXb0s0vltnUl7Hjnpp1txdmmF1nwy
	x+umUikmBZJdd1n8ZDhz4LnK31qEECWT6THb/cQHSx2qAR3c7lcN
X-Google-Smtp-Source: AGHT+IFV37H5/bO6WnC+AA8VV3jJIvkjLmPtrQ8f3H26nI4j+j+w8DMeXmGE/TMza6NiD19EQ1dYmzQpff/ATip7l5Y=
X-Received: by 2002:a2e:8052:0:b0:2c2:9536:baff with SMTP id
 p18-20020a2e8052000000b002c29536baffmr7388127ljg.29.1696602211395; Fri, 06
 Oct 2023 07:23:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Fri, 6 Oct 2023 15:22:53 +0100
Message-ID: <CAKrXSsZsMNxp4BmkWXzza-HYcPdyFYootjYjsz+tMowVb-pGEA@mail.gmail.com>
Subject: [Outreachy Applicant] Help needed
To: outreachy <outreachy@lists.linux.dev>
Cc: Julia Lawall <Julia.Lawall@inria.fr>, Andi Shyti <andi.shyti@intel.com>, 
	karolinadrobnik@gmail.com
Content-Type: text/plain; charset="UTF-8"

I need some clarity on a step in the setup tutorial.
I use a Windows Subsystem Linux 2 (WSL2) as my Linux environment on my
Windows 10. I have followed this "OutreachyfirstpatchSetup - Linux
Kernel Newbies" up until the installing Kernel stage. Now I am
confused about how to execute the next stage "Running your Kernel"

It says to make a grub boot menu and we are asked to run this

sudo vim /etc/default/grub

when I ran the above command in my WSL2, I realised there was no grub
file and the command just created a new file, is that normal?

this was the output of the next command:

gilbertadikankwu@GILBERT:$ sudo update-grub2
[sudo] password for gilbertadikankwu:
sudo: update-grub2: command not found



Please advise
Gilbert
