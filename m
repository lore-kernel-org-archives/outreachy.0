Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE242565
	for <Outreachy@lists.linux.dev>; Tue, 14 Mar 2023 07:18:10 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id h8so14263087ede.8
        for <Outreachy@lists.linux.dev>; Tue, 14 Mar 2023 00:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678778288;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YjZRPvOZ4pDEdR8sfmItZ0vurZsu6xw7zORxIAChvH0=;
        b=PtM6WYFmuQG/4oaAyRhCCRT/C5jwB8FkShvzEAZG5J2m5Hc2gKMnwzgjpwUG//tsop
         Ujbu9VzsuAfqLtqEtUh+iUtcsFMLVjOvhhyDx+PsdvAChHoMRpwAQuJIvzIbd8/cug6k
         4WBVskvsu7VY2wdyStWqGQlZBv+lhvFEogmXnGPUZ7XwS86hFxKwfUsSPEvDD8HDS5iG
         kA0hObsgIlCl36lTxKPYqsbTw3DWV4Wz2ll82ELwxfsGww24bX0KLV/2PzKvwxuXDagh
         XxWEDvL2kqhAlEUIK4I4EJEAcq+Lu6nb0Qkh698FVC1kosQ8D4N3UGi32gVlx4+MmjJL
         O+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678778288;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YjZRPvOZ4pDEdR8sfmItZ0vurZsu6xw7zORxIAChvH0=;
        b=DPaREx4xRf/SrffMUXTQSTFNtmyNdDCBnT+zx6CG8OQair5ZjRt74Za2pNuw9WP1Qh
         OmN1mVnRbNliipWE/8XkWfg3rv4iOz7HDQrpUwtIOGbXc+TJ7AGTUjskNWcEcEn5hmtx
         iToMeSIKqeaQUWx6HC6NqwtE2pfxGL8JM97CwV0tdvdnbSPH50Tt2yXWrXTK9cgO1luj
         HYFuyllRZJYHmVWAOUK7MF9062emfE9ydCVXqM+ImTicAt7qDbG77MgtgKn3xW/j9+Vc
         0uY8WkkNd31TsjFyOGblu4jMyW+Hxc1QluSkpx5P3ihV8w5kWM9QeHTPqK3aamsO4kxC
         2glg==
X-Gm-Message-State: AO0yUKWDM1TxI8qRPlRsy78r+gPn5roHtnkQu21sYDpP0caUyoc5UY2w
	1/7M8PHBujiKCa+xh1p6eU6JFwQOO5IxIA97
X-Google-Smtp-Source: AK7set+OHuJMDuIabULAdRS8CTzwsLPLwSU0qceejrYF7s6U8GK0FadtRvoN6Y9qKDvdqobnyfj2sA==
X-Received: by 2002:a17:906:dfda:b0:862:11f6:a082 with SMTP id jt26-20020a170906dfda00b0086211f6a082mr1205395ejc.17.1678778287964;
        Tue, 14 Mar 2023 00:18:07 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.45.115])
        by smtp.gmail.com with ESMTPSA id mh19-20020a170906eb9300b009200601ea12sm697998ejb.208.2023.03.14.00.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 00:18:07 -0700 (PDT)
Date: Tue, 14 Mar 2023 12:18:05 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy@lists.linux.dev
Subject: Re: Record Contributions for Outreachy
Message-ID: <ZBAfrfRH3OxLebjj@khadija-virtual-machine>
References: <ZA+JZ7TTMmm3K0Y5@khadija-virtual-machine>
 <ZA/LkFq1w6jf6YAR@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZA/LkFq1w6jf6YAR@aschofie-mobl2>

On Mon, Mar 13, 2023 at 06:19:12PM -0700, Alison Schofield wrote:

Hey Alisone!
Thank you for the help.

> Hi Khadija,
> 
> When a patch has been accepted into staging/testing it will be visible
> here: 
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing
> 
> Once you see a patch in staging/testing, then add it to your dashboard,
> with a link to the patch. Mentors will be able to click through and
> see the patch, but may not have followed its entire journey to getting
> merged. So, take a moment, and share a note in your dashboard explaining
> what you learned from that patch. 
> 
> We expect learnings at this point to be about patch mechanics like
> 'I learned what imperative mode is', 'I learned how to revise and
> resend a patchset', 'I learned how to keep my staging/testing branch up
> to date so I don't send patches for things already fixed'. 
>
> First Patch Tutorial updates are also contributions. Please record
> those on the dashboard also. For those, you can send a link to the
> email on this list where you proposed your update.
>

I will keep above points in mind while recording the contribution.
Thank you!

Regards,
Khadija

> Thanks,
> Alison
