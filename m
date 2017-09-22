X-GM-THRID: 6468555141619384320
X-Received: by 10.25.155.140 with SMTP id d134mr902639lfe.28.1506078188679;
        Fri, 22 Sep 2017 04:03:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.67.148 with SMTP id z20ls1275174lje.0.gmail; Fri, 22 Sep
 2017 04:03:07 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBNvlGiPjwmvwpclPmsNAV56dSXyFhZ3eB14M9ihEU23565EvotYHoc3bO2JwzjUjoV/O/X
X-Received: by 10.46.82.9 with SMTP id g9mr1131001ljb.42.1506078186994;
        Fri, 22 Sep 2017 04:03:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506078186; cv=none;
        d=google.com; s=arc-20160816;
        b=M7MRvMIRpiUNsPc8Axdo5vWQPA09dD/WFaEYSbIXKQ5hE8U7HfzXLUkUdvaP6YFyhs
         SZfZB7YQgAgoMtO4gu45vK+nirxuDr8nZ7gIQ+IwpiI4RRMTYuWfvSwuh96DGdUyzr+A
         DmdpxmIqZehc3htTwkTU1MrornF1eVdXW8VCnh7JFcm4Ryuv/TCh4/qb7Ai8r6kwBHnd
         tAB4r+U2l/pPFXKmksuITseNkBncIWbdBdqC4TA+yTSusJxmfBNK/JyoZfqQuFzlk4yT
         qWv0vwqOMPtTVOX5bPZLTS72f3nGOh9UZH4wR+Jb2Vb2wfRG8Le/jvuKxiOu+o14npOe
         hyFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=OrL8niwhHIdnL6HxLgwzuvDQ+YfdrsozCPDgc40MWNg=;
        b=jMGMZHPOoW3HSPgnk/pZ8hhaV+tgTPLVAKN3bRrLikp7xorLZUewruBIXFsuCN2L85
         taEMBvgdOt997GbOYChuNLRDP7DDDefqJyzabyJ63u32vybODZRVPFdW3dYp8cuPN04r
         h/Y+cSOVk/oDv4bg2+3Wy+6b73WWNxS8f9UcAQKKPlO8VL1SMv0ZBWGvuJO4BxT926Rz
         GIQjiUhewoonZZqvXTx4w6DEjZWiawdR4wfYl3JqUNcqRrCONjyzYTAyYbIx3NduGWue
         b8TPa+v7mPZn+BwWXuDRAJfw3/1mqxTAN9XbO19iglxEMMlv5J3WXmhc3rCp/+ayhW5a
         deNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c142si126582wmh.3.2017.09.22.04.03.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:03:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 45101BC0;
	Fri, 22 Sep 2017 11:03:05 +0000 (UTC)
Date: Fri, 22 Sep 2017 13:03:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm/tinydrm: Move backlight helpers
 to a separate file
Message-ID: <20170922110316.GA9061@kroah.com>
References: <20170922105723.GA4335@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170922105723.GA4335@meghana-HP-Pavilion-Notebook>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Fri, Sep 22, 2017 at 04:27:28PM +0530, Meghana Madhyastha wrote:
> Move backlight helpers from tinydrm-helpers.c to
> tinydrm-backlight.c

That says _what_ you did, but not _why_ you are doing it, which really
is the more important part.

thanks,

greg k-h

