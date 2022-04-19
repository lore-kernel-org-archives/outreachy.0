Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B221374
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 17:13:10 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id t11so34247550eju.13
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 10:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NTJziAao2qjs+uzVN3EQ0D56BQ/OVvAsLtpYcVjVn+A=;
        b=hG7NRAEqY4fXRKjEEWouK2EPTs8ZUbSum41yScHVPKHzQW6kRIsvIQQf7MKFysPouZ
         rMDSDrcUrcIxCR5H9c3YC5aN/E5iCNA0oeWmYSFd+shc2Tt3ndKZtfjXn47Mib49TtfW
         L2SH72XksWJ41E60qngH1Jd5/XWOPf+6lD5741CqB59FY04TDi4o21+/+uKgDDSBemXa
         2corbY0VeDFDsDZycBgtykqOUW3SZDEJ2Z1uuUjq97DC/eULR/VT5kvzc87oAxook6R4
         01cEMSW7j1JvKlHrWApUdOmSyOJufn70BpMyFCyA86UXwOSQUNVKnqzd2r5yhk+roibR
         DQhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NTJziAao2qjs+uzVN3EQ0D56BQ/OVvAsLtpYcVjVn+A=;
        b=VilkWjc8w+J9ujA3/ef/y8dOxLxSlKrTJEz5WuuTxeUoSuzeAmrgkMwWlTZTKI05B9
         3+z95iOKDwfW0+qIKEPoprzjikOOJIAe0y2/mcY25C15pi9iwM7lD4RKkEW4Yu0h1imV
         h3aEVphUJUg39UeljF2twWZBUaRG1s1R01GtfzKvsSrn/3wSJMSpU1aJbscgXxkj9tU3
         WbAnUe0/07tKXkXQ2wjUsb52LGrlp2yoXot+o3Z8/ZTItyFw+xafUi2FTWWBazMNMSdn
         0YGf30nxqhbbxFpQ0fPWy0D/vrtREk4QNYvMZUKc+9B11C7EFZqs273TGCKZkN+fE18H
         K1mg==
X-Gm-Message-State: AOAM531+8YEnZP2soSERIGJ8vdzZZYcFuGHdjMqnipMzRQtK0viPjt4e
	A+KVSMHLfu8svOJGnDQ/3Jo=
X-Google-Smtp-Source: ABdhPJztdX9341/dhGDD0GY8ytvJkIc4J64GZtUxVsMBxk3Z+Nitg/4B9hvwDcDK5TIji2yzfgyXrQ==
X-Received: by 2002:a17:907:1693:b0:6e8:c7e5:c297 with SMTP id hc19-20020a170907169300b006e8c7e5c297mr14963188ejc.138.1650388388796;
        Tue, 19 Apr 2022 10:13:08 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id q11-20020a170906144b00b006cf61dfb03esm5876958ejc.62.2022.04.19.10.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 10:13:07 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: Matthew Wilcox <willy@infradead.org>, Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Mike Rapoport <rppt@linux.ibm.com>, linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH v2] mm/highmem: Fix kernel-doc warnings in highmem*.h
Date: Tue, 19 Apr 2022 19:13:06 +0200
Message-ID: <2147048.ZfL8zNpBrT@leap>
In-Reply-To: <6767543.18pcnM708K@leap>
References: <20220418175638.30018-1-fmdefrancesco@gmail.com> <Yl7MpmsXtzOfztHu@iweiny-desk3> <6767543.18pcnM708K@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On marted=C3=AC 19 aprile 2022 17:09:04 CEST Fabio M. De Francesco wrote:
> On marted=C3=AC 19 aprile 2022 16:52:22 CEST Ira Weiny wrote:
> > On Tue, Apr 19, 2022 at 03:25:16PM +0200, Fabio M. De Francesco wrote:
> >
> > [snip]
> >=20
> > I think you should gather all these patches together into a series and=
=20
> submit.
> > If I am following correctly there are at least 4 patches now?  But I'm=
=20
> unsure
> > of which ones are stand alone.
> >=20
> > It would be easier to see what changes are being made along the way as=
=20
> well as
> > the final result of the fixes.
> >=20
> > Ira
>=20
> Yes, this is perfectly reasonable. There are only three patches (this=20
patch=20
> plus two more in a series).=20

No, you are right. There are 4 patches in my queue for Highmem related=20
files. I think I'm at a point where I'm starting to lose sight of the tasks=
=20
due :(

> Since they are all related in some way, it is=20
> best to bring them together into one series which I will rework taking=20
into=20
> account both yours and Matthew's suggestions.

The collection of all these patches in one series is confirmed for all 4.

Thanks,

=46abio



