Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91487C
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 02:35:24 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id bp39so16993324qtb.6
        for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 19:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3I6+yGyLBBc7SN/2bT0y7pdmGV0qhEvg91j0foiyqc4=;
        b=GT3KEL+XvTyeDJ+V2vY+6HvRkhuCzuY3KPH0ue3V8ZXv9isug5Ph3MvIdqAn1FVh8s
         QYuyvotwi0pNT0uKvP73qjW9MrbkpvxHY6NjxfUOCaSOEr75DvJPCcRfF4PgrI/cRo0E
         vlvMnXop2i0qXocFAjDeBpb19M3m36tPPZJRlMRtD9InDZ16aO4m5GTIoIXP0HJtVYP6
         cV1TvmzhA/bB4B92UW4gHSjGBmgAhxnAfBVfYlWh7Kwk+M8uyKrb1dON2t4ntayMTOQF
         7VGITkTHzIE1f7i+80pNaeayN4JXR07vXRNwe7ZrTthocJaHGY68IoGcYzZrHLGMFybf
         Dt9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3I6+yGyLBBc7SN/2bT0y7pdmGV0qhEvg91j0foiyqc4=;
        b=nSGOhWctFc+A3EzF7UwP9MaEPLAO2cymLkQlQDhLI6CDxBCvacdUzZM0uWWr02UgyY
         vO0QJTUq1VmoTbrSCBGloNIkOLg9URGranQ5RgfM0fFGw35jD946/eRkUtDZVB0JBwMo
         Ku/UAtsT3IrBl7Da8QXRiWu2H/1FWem6mtM04HEFgcOKQS5Dd0AdkVwyGIQB6lR5sel2
         jwz4/RZXQMg45XSWQZYsRxQ9V42kG0GGxbShG3ROH/mFqwwN9sgWLmUCbZcEBzRGgYoD
         bl0X30gHZP98+9sKfb+diC4j+PDyOZ/wXZ0tfJsTjiuAa0V1b6REPeG4vvSrh3ZTAUpV
         uPxg==
X-Gm-Message-State: AOAM530MjYujTaJxfzFgkIZJSyN8KSzQtlNcUROBA/5tZaWzWSCimpwI
	948tUlvNw6ZIn3BvZEuHDMw=
X-Google-Smtp-Source: ABdhPJz/ApwXUhHsDz6KQbIUQE0/5i+M7Pfr5o1HTegAvD1n2NiAw+zgY5hP1ZVUjFjL0O7SHz1Pcg==
X-Received: by 2002:ac8:5a16:0:b0:2e1:ea00:b4e1 with SMTP id n22-20020ac85a16000000b002e1ea00b4e1mr30996113qta.329.1648607723795;
        Tue, 29 Mar 2022 19:35:23 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([2607:fb90:5335:484d:fb8a:ce2f:93bb:7019])
        by smtp.gmail.com with ESMTPSA id v18-20020a05622a189200b002e22e09d77fsm16415276qtc.59.2022.03.29.19.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 19:35:23 -0700 (PDT)
Date: Tue, 29 Mar 2022 22:35:20 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Alison Schofield <alison.schofield@intel.com>,
	outreachy@lists.linux.dev
Subject: Re: mail question
Message-ID: <20220330023520.GA1034773@jaehee-ThinkPad-X1-Extreme>
References: <20220329235021.GA1009484@jaehee-ThinkPad-X1-Extreme>
 <20220329235706.GA1172722@alison-desk>
 <20220330023434.0a265390@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220330023434.0a265390@elisabeth>

On Wed, Mar 30, 2022 at 02:34:34AM +0200, Stefano Brivio wrote:
> Hi,
> 
> On Tue, 29 Mar 2022 16:57:06 -0700
> Alison Schofield <alison.schofield@intel.com> wrote:
> 
> > On Tue, Mar 29, 2022 at 07:50:21PM -0400, Jaehee Park wrote:
> >
> > [...]
> >
> > > Q2: I see that my patch was sent
> > > (https://lore.kernel.org/outreachy/) but I didn't get an email yet
> > > from the outreachy mailing list. I was wondering if there is a
> > > delay?   
> > 
> > Your patch is on the list. You can see it through lore - right?
> > I see it on the list, and since I'm subscribed, it came to my mailbox
> > too. There is no automatic reply from the outreachy list.
> 
> There might be another issue: you're using Gmail, and you sent the
> patch also to:
> 	linux-staging@lists.linux.dev
> 	linux-kernel@vger.kernel.org
> 
> ...which is correct, of course. But if you're subscribed to one of those
> lists, Gmail will "deduplicate" your own email, that is, it actually
> deletes any copy received after the first one. :/
> 
> In case you're subscribed to either list, can you check if your patch
> is in your archives of those lists?
> 
> -- 
> Stefano
>
Thank you Alison and Stefano for your answers!
That's interesting that gmail deduplicates but it makes sense -- good to
know! I checked the archive of linux-staging and I see my patch there.
Thank you for your clarifications.
