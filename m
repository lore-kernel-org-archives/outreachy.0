Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD8B1855
	for <outreachy@lists.linux.dev>; Tue, 24 Oct 2023 01:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z95HJlnj"
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1ea82246069so2672733fac.3
        for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 18:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698109251; x=1698714051; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DjuqVM3WETD906P7XuBC32K4wWCoYbhKiGcPmIbgPYk=;
        b=Z95HJlnjbQj2pQDcw1bj2eJ5NaGsULbQmyWinxqDQdT17/MayQQpN/+wvZl7UpRR8Q
         OZ4Q5CXSIJ5Aul4rF/UvVmOQIgWxf2BDL2yakUTBOaiFKeTXffXW+aE4m2PcFJSzQlfY
         d1Qgj0pHr2zN1zrmk3DNAR290vwjZaSUesc00iOZ/sWuuHBsHByWyqz8nXqTSWU060dt
         9x/kklSLsgafr3jQhB8fdVyxyvPfogJwZpMXvDgiLVr3vQ/1SXRMkxe/ywwlbac+NPWS
         6J4z9fAjm8U7klOZ2OV7mUvFMi06kv7w+K+4KOqFBZ9BFJRfIiZOoSXxeJO0qB6AJQot
         rYOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698109251; x=1698714051;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DjuqVM3WETD906P7XuBC32K4wWCoYbhKiGcPmIbgPYk=;
        b=DVmmq/oKsijar8VltM/Ow1MCadyiN/QTFogGkrIXe2Yeh1rUi3P4bmsfUaY4bI8vfN
         E3XC3ce2kvc1oHi4iHYKSInDnzHYqMynuil/Miigo490O4BpJJL8FL1vGKA7u+O59qtn
         7Iz70mv/seohDoFOMxzflPVxbKBXruiFkhuJhVLK1fOPsIJ8fJB1yNcd0+ZivUa+I5if
         KgVaZS0SBm3gcjEOLCaqxtc/PowJNfq6QT5l+OecIHVOGoRcD9+lCIWAUQp8PnqYGl91
         YOX70JJA7/W9iE0EB6Hc652q1m6RYYkvSaxocC7wbHMGBkl4jkPuShwvP8BEfpiL1aiV
         4tgQ==
X-Gm-Message-State: AOJu0YydG5mdjwIAGwilGiGGlLssKYsayaNEePwycYCHuOuUqPBDHUfM
	5W1WJL/FOZZN0z6wjVPLvaEPuvw/n3FaNQ==
X-Google-Smtp-Source: AGHT+IGHFwP1BC2Le99CfGgnoEZq85vfYF/ldiz/VKhyr29aw1lZHIrvE8pgo3Phm/49rdqLG8L7bQ==
X-Received: by 2002:a05:6870:2112:b0:1e9:b599:1aab with SMTP id f18-20020a056870211200b001e9b5991aabmr12917387oae.58.1698109251410;
        Mon, 23 Oct 2023 18:00:51 -0700 (PDT)
Received: from host-62.home ([47.184.17.213])
        by smtp.gmail.com with ESMTPSA id k7-20020a056870d38700b001e9a7280a30sm1948059oag.0.2023.10.23.18.00.50
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 18:00:50 -0700 (PDT)
Date: Mon, 23 Oct 2023 20:00:49 -0500
From: Jeremiah John <jeremiahjohn08706@gmail.com>
To: outreachy@lists.linux.dev
Subject: drivers/staging/nvec/nvec.c "usleep_range" check
Message-ID: <ZTcXQXfnkEMYjnDk@host-62.home>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I ran checkpatch.pl on the nvec directory in drivers/staging and got the following two checks for nvec.c:

	>drivers/staging/nvec/nvec.c
	>---------------------------
	>CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
	>#630: FILE: drivers/staging/nvec/nvec.c:630:
	>+			udelay(33);

	>CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
	>#717: FILE: drivers/staging/nvec/nvec.c:717:
	>+	udelay(100);

I checked the documentation for drivers and it says that udelay() is used only in the context of atomic functions.
looking through the source code (nvec.c), I found that the lines where udelay() was called were in functions:
	1. static irqreturn_t nvec_interrupt(int irq, void *dev)

is this an atomic function? can i test the changes if I do not have the nvec modules loaded in my current workstation?

Thank you,

Jeremiah John
