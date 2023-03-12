Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D262E538A
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 18:26:24 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so9447203wmb.5
        for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 11:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678645583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aIEWxeXErM8hFrybBvTc4U7b+3aZMy69vxSdhbkESxs=;
        b=kaAbJCf2jq8NieJoSiDR92MhTY3uEM0yeAlBH8u5Zmz5prQ7pPc2BxSjodT8aVRfHs
         dvoIHPs0SN6UylX0kQMiM3A+KXmOq/bMhjyLyvz+n9pyLqwh/jZUQzTnTV4Sh/Zlhe1U
         wx0h/ZAxZy9SiAA57aibP6es1yID5S8DJ3vK9WWJgZuWPmXjqVkDxAw5WgayS9JgFGbZ
         88HKRow2xPP86eYtePzA4ZHg/3Apr0p9zhdJMer9v4Bzr6leF4UFvoHbaOH8sjOhYRl1
         GfkP8kg1PcOMc4QXuAiXa8eyp5UjHEAP9G/JDj1K/qlHEOwPfWpRoMUP7fC0hN39z2HI
         g3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678645583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aIEWxeXErM8hFrybBvTc4U7b+3aZMy69vxSdhbkESxs=;
        b=zzhJ+kRMsdFEUxuZmj3CgwvsPGjk7CiraWTX1CFvUHY2YTw3yNHJ5Rpf7fTv3BWGXW
         D7TIym/HFWUGLVf6yoatns1VLqu9QowcFcwRMm0n68rZXo2nDBTKClJG383TgJC1d9zp
         PVB7J+V6Zp0SfY6/bPOGemByQvxK0K9qMASA194S7Su8wISetsOB1V6dvMo/tBJLog9f
         IBZNTRLOLJJUPfiqGucJZNQhkhRNikFos9nTDbCSOhYmJ104ktOo+1F3z4MbHn/2Xd5P
         Ro94aVFDUgCuBRpoWuzOeLIbDnaSMWG6vPUdoLVNmnrroewInJsbFWx/7ekYL3nRNQSP
         LaWA==
X-Gm-Message-State: AO0yUKWFNWJnSpZcgOwpM3VOc1Miz8jUE6qYFDa/NYrVVRxNoZjFyDIh
	ONiEI404ufKhE4Y2X0W4qrFWGNcvV+Idfg==
X-Google-Smtp-Source: AK7set8om77q/AwkdduCu/v2CDNGp9KpArsE7a8x9IYo49aHz2TaFUNCATTo6r49ascE1TRlApEMpg==
X-Received: by 2002:a05:600c:a04:b0:3eb:3971:a2aa with SMTP id z4-20020a05600c0a0400b003eb3971a2aamr8752891wmp.25.1678645582754;
        Sun, 12 Mar 2023 11:26:22 -0700 (PDT)
Received: from suse.localnet (host-79-35-102-94.retail.telecomitalia.it. [79.35.102.94])
        by smtp.gmail.com with ESMTPSA id k12-20020a7bc30c000000b003dc522dd25esm6610544wmj.30.2023.03.12.11.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 11:26:22 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Remove parenthesis around single condition
Date: Sun, 12 Mar 2023 19:26:20 +0100
Message-ID: <5894858.PDWKU0SB9G@suse>
In-Reply-To: <20230312171517.GF28100@ubuntu>
References:
 <20230312071700.GH14247@ubuntu> <5367184.29KlJPOoH8@suse>
 <20230312171517.GF28100@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On domenica 12 marzo 2023 18:15:17 CET Sumitra Sharma wrote:
> On Sun, Mar 12, 2023 at 11:39:17AM +0100, Fabio M. De Francesco wrote:
> > On domenica 12 marzo 2023 08:17:00 CET Sumitra Sharma wrote:
> > > Hi Fabio,
> > > 
> > > Thank you for the insights.
> > 
> > Hi Sumitra,
> > 
> > Please pay attention to the suggestions that Julia kindly provides to you.
> > 
> 
> I am sorry for repeating my mistakes again and again as I was struggling
> setting up the inbox in email-client and because of which I was unable
> to respond inline. However, with the help of julia now I have set up the
> inbox well. Hope this time I am doing it correctly.
>
Sumitra,

You are doing it more than correctly, thanks.

Also, I just noticed that you too took the time to help Khadija by providing 
well organized written information.[1]

I appreciated it :-)

Fabio

[1] https://lore.kernel.org/all/20230312173112.GA28679@ubuntu/





