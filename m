Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489A21364
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 15:09:08 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id c64so21650656edf.11
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 08:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+Sw3xaIXVD9K4dmPddjbpkY8Pi6fTtwE00qd0a/j+D0=;
        b=CzHxjtaaWAFaLWoVi3b04VYyYmpovTWRCaHDe6W52KYKDqqL+Rj1gAzF4Ebfel0jeF
         V2l6RGwn7SFkFeeB2mbGO8+y8kRMRaYH/W9OGE+oUcCIH2fzVtmFdN/wDL3dmY8ZPB2O
         FF2F6dn/b707Yobl0zaJLZ0jcpgR2p9+1DqIJxxqMS5ZhXqbjPIbY0KjGcn8ic4Ps2RC
         ZZLG68goBSwO4yTUNmEGgsVJKXSzJojVVf9zHzstuwVaZ9LHg5wuQUbcYowdpAKZEkeK
         ph9w6QHEpbVVz34z8VnGrfQk13BTAv0JmRm7E7ugYMfoAwHsrXqJR/KdI5V9Z9dQjw7Q
         ox+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+Sw3xaIXVD9K4dmPddjbpkY8Pi6fTtwE00qd0a/j+D0=;
        b=bYnGlEJYIVu7+A7Cztqm+ePKjhBOUfLeq5P+DIpp4hHJ0CZNGJQ7+XdrSToyRPXKCr
         vrz7f/tbBDhh2wSikh9Tg7rFWsJZ2SxyAwPJs+cITFIbGt1IGaxPvMuG9ecNOXCIztq/
         CoS/ycFR8IG5kwcnnIizQ+oE+yh7F2tW56hLVeTwTU1XaT4E4BO5zWc/DLA4NpYzuSl1
         Qlmhr9Uni0VyH33R2Tp9epWySXmzcHZ7MOG1Us0jjYGqUad9xtz1y8mV9sGNvjurzY0T
         9eA0IKyMg3oK1O97IYc07LBTpct3eYUFHN0aXbs32nFzUzaqTsyhIEYROjgXD6B4KJiz
         fr7A==
X-Gm-Message-State: AOAM5331szGQaEIxBCszBwY971sMZ2OLUPZoVufmRzDPRznpMvL1WPz1
	qL7uXl5T5o/29fN7myNv/T8=
X-Google-Smtp-Source: ABdhPJxlocry7ehXB6chhIw0Ntoy5MXjSbBbl8uD0jlOHJ39N7FW2jt65XGYn8jbHUb6OIiz3zfNdg==
X-Received: by 2002:a50:c316:0:b0:41d:6fdb:f3db with SMTP id a22-20020a50c316000000b0041d6fdbf3dbmr18263003edb.315.1650380946445;
        Tue, 19 Apr 2022 08:09:06 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id g24-20020a1709063b1800b006e8cf786ee8sm5574032ejf.21.2022.04.19.08.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 08:09:05 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: Matthew Wilcox <willy@infradead.org>, Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Mike Rapoport <rppt@linux.ibm.com>, linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH v2] mm/highmem: Fix kernel-doc warnings in highmem*.h
Date: Tue, 19 Apr 2022 17:09:04 +0200
Message-ID: <6767543.18pcnM708K@leap>
In-Reply-To: <Yl7MpmsXtzOfztHu@iweiny-desk3>
References: <20220418175638.30018-1-fmdefrancesco@gmail.com> <4058661.1IzOArtZ34@leap> <Yl7MpmsXtzOfztHu@iweiny-desk3>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On marted=C3=AC 19 aprile 2022 16:52:22 CEST Ira Weiny wrote:
> On Tue, Apr 19, 2022 at 03:25:16PM +0200, Fabio M. De Francesco wrote:
>
> [snip]
>=20
> I think you should gather all these patches together into a series and=20
submit.
> If I am following correctly there are at least 4 patches now?  But I'm=20
unsure
> of which ones are stand alone.
>=20
> It would be easier to see what changes are being made along the way as=20
well as
> the final result of the fixes.
>=20
> Ira

Yes, this is perfectly reasonable. There are only three patches (this patch=
=20
plus two more in a series). Since they are all related in some way, it is=20
best to bring them together into one series which I will rework taking into=
=20
account both yours and Matthew's suggestions.

Thanks,

=46abio


