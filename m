Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DF77C
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 02:05:08 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id d6so11661781ede.8
        for <outreachy@lists.linux.dev>; Sun, 24 Apr 2022 19:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3pvRJjhI6R4lroHj6g3A/ajjsXoERGIDfFflfPaFYGQ=;
        b=V/qISFyD9O5CMBho8+9ZH7gbXF7ekx4exgSj3WCjN9AFYsyM3OwLtSVLQqr704MVy7
         XZ0hMSe5QvtBGfN+9tAqAvYJj8bokoKeN37LP8Jc31Bvt4xtTHW/gP2Jcl17rZyvNeL8
         bz4Zhh7aYoIsoWcSYaXvSE33SF3uTlBmGVj2Io6x3MuOAwMHSoFRgcObH3wtwQJMf0SU
         GLk8AnRHDixX1OfJVNgum972UT7pPdEsVK3ItSX6bw0kNekRL2Vg6ImayOaCXGNvP1Yn
         /YzgXsJmqJsDqkohetRAM5ztIIOVeUadL/0jt5z0vrEPwmMHSDKAvOnQ3i3CilLZe2Hw
         Squw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3pvRJjhI6R4lroHj6g3A/ajjsXoERGIDfFflfPaFYGQ=;
        b=45pD+jXRmsdhHeON6rQKMaJSByfdswGiWLoCVP4h41MHBNgkZlBLPhDV8GORWg18/U
         rc9SnwnAgaXYNmuFArGnsz+OX4eIfVOZmyRvBtIUOLBeAv8OVTfurjHerQd+RQ0SZ+W+
         6u24/hy37HD/gM75ajtP2sHXVDpPNKXZfqVoAB1mUU2QRFMvGbxh9+xYfR899jeSX6kE
         pdCpZjMnk1gL9Sg3dtVzehhqikLdL25Bqmdvzz89oUgehnD2D1jpTqEj+VyPqEongPDk
         WemYjWZ5pyYuyQARLJhhdYd6oeMG+9Qh3/bwaoVaWopEcEXuLsJcpyHaQHtbGz0aBQoC
         AC2Q==
X-Gm-Message-State: AOAM532EyNXAF18RvU73iuu6VpcQ/em25X6HEu9tfMS0tnYmcgjpvKiR
	eHblxItxknBigDMq12HDjVk=
X-Google-Smtp-Source: ABdhPJwcoZLdLkbGXJ2Qy7Z44OfAwOV+HXRl3H9+RH/qeMS2DUc4coAp+4WPYxrpQYWuomMvF+yl3w==
X-Received: by 2002:a05:6402:84c:b0:423:e5a2:3655 with SMTP id b12-20020a056402084c00b00423e5a23655mr16803202edz.28.1650852307377;
        Sun, 24 Apr 2022 19:05:07 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id z61-20020a509e43000000b00425e4d583e4sm824867ede.87.2022.04.24.19.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 19:05:05 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, outreachy@lists.linux.dev, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 4/4] Documentation/vm: Rework "Temporary Virtual Mappings"
Date: Mon, 25 Apr 2022 04:05:03 +0200
Message-ID: <1822146.CQOukoFCf9@leap>
In-Reply-To: <1894872.PYKUYFuaPT@leap>
References: <20220421180200.16901-1-fmdefrancesco@gmail.com> <YmXyhH7wAJo274WB@iweiny-desk3> <1894872.PYKUYFuaPT@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On luned=C3=AC 25 aprile 2022 03:42:46 CEST Fabio M. De Francesco wrote:
> On luned=C3=AC 25 aprile 2022 02:59:48 CEST Ira Weiny wrote:
>
> [...]
>=20
> > Why do you say this?
>=20
> Oh, sorry! I didn't mean to say this. What I wrote is _not_ what I meant.=
=20
> My intention was to say the same that you may read below about=20
> k[un]map_atomic().
>=20
> This sentence should have been:
>=20
> + It always returns a valid virtual address. It is assumed that
> + k[un]map_local() won't ever fail.

These two sentences should be better rephrased as the following text...

+ kmap_local_page() always returns a valid virtual address. It is assumed=20
+ that kunmap_local() won't fail.

Thanks,

=46abio




