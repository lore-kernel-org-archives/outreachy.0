Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF6220F4
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 04:43:21 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id v4so16283558pjh.2
        for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 21:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=udV+udycErN18goFS1kOxFC4FYoRvwZOUYTf8up07qQ=;
        b=o4KCo7bAxzDlPveTsphaMnHlnXpTH7+mOuzE/NIixl3OXShavpOWmBc6vXXaxjshfn
         qCLel2E0jRlNy92F/5RxvYlwLH2Oz+sUnsKcYK+X1ku8qQZzZkaTdxlSYt2y5mmpAhjl
         p4X999+KoF8XMQCx9jo7RAbW8LbzkN7+2onyy/pd6f2d/OfL3s5I+dpNCOKXfYqwG00M
         V5N+5nzg7KMsBl4XHkYyqdraK/pKJqqJrUkTGKCYAOG1mHlZ+yv5myOMfVKuqxGAWYlH
         HbjuLfJ1pFJBVf9YFZffBh/vdHZQZ7RfNd18bMDd1Fgwi7KLAdtVBI8sQ18GwFc6+55p
         JMHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=udV+udycErN18goFS1kOxFC4FYoRvwZOUYTf8up07qQ=;
        b=BwDfgTwFrdLc4zOoRTU6Ob7iWq6c4ocIozwHbTpdsUv+PM5xOvlRQbsmOMgzYGD9cu
         JwEaDYlfP9RZOdMZsMDFG3yoIOZMqJt0czUShDqoyvVEkewMNz/tBokroBJ1Fs32ACAe
         BF2+MTGgsXZhJ/GuZ3GKmETjz91uaUdg8bjMOS2EfURYsXCMyXLQzt2bmlsMg0GkYWTj
         8RUYPTVGCw7dZ/CQkszcuE1A1CCNPb1n3MJuCL4dFFz5mrCa1xpAFBDM2w4Nm11/ZHBl
         8wUk1j/1Ma0VH2j3UlvuZj6IYUM+9YjQoeSxIcZvxBw5kDhi824waKB3ZRXinQpdZrwY
         elHw==
X-Gm-Message-State: AOAM5311IOM8RkFDcReweWuqJ93Ldk4Ar5W3x6oq3ITb96Y2ticX1QJk
	tkq+jX0BjWlC5QyprdK034AJU8qL5KOhGHulZvo=
X-Google-Smtp-Source: ABdhPJwJ5dgiISHPp/mcQIluN4wb7E0s4C5A9cZg5eRbeLRCNmqIvZpp+RxS12MFVb3btp+1v1OR8/vkN8BVhk8EXzw=
X-Received: by 2002:a17:90b:3e8b:b0:1c7:852d:e843 with SMTP id
 rj11-20020a17090b3e8b00b001c7852de843mr2598041pjb.244.1648529001425; Mon, 28
 Mar 2022 21:43:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAMWRUK56zyGmOu+=eS9SHGnMpvVR9gtD-OoZaf5dbWRk+zEZ7Q@mail.gmail.com>
 <20220329042925.GB1167211@alison-desk>
In-Reply-To: <20220329042925.GB1167211@alison-desk>
From: Roopa Prabhu <roopa.prabhu@gmail.com>
Date: Mon, 28 Mar 2022 21:43:10 -0700
Message-ID: <CAGe6so_B+p8M67vdsBocQ2D+M4oY_HhxQx6B67HOkdiaPG8O-Q@mail.gmail.com>
Subject: Re: networking task 3
To: Alison Schofield <alison.schofield@intel.com>
Cc: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, Stefano Brivio <sbrivio@redhat.com>, 
	outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 28, 2022 at 9:27 PM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Mon, Mar 28, 2022 at 08:41:44PM -0700, Sevinj Aghayeva wrote:
> > Hi Roopa, Stefano,
> >
> > I finished tasks 1 through 3, and I've attached the output of running
> > fib_tests.sh and fib-onlink-tests.sh on a kernel that I built.
> >
> > Cheers
> >
> > --
> >
> > Sevinj.Aghayeva
>
> Hi Sevinj,
>
> Welcome to the community!
>
> Please review the project contribution guidelines in the project description:
> https://www.outreachy.org/outreachy-may-2022-internship-round/communities/linux-kernel/#linux-kernel-networking-selftest-cleanups-networki
>
> Mentors begin reviewing project specific tasks, such as the ones you
> posted, after an applicant has gotten 10 cleanup patches accepted into
> drivers/staging/.
>
> Other useful links:
> https://lore.kernel.org/outreachy/20220325172530.GA1151996@alison-desk/T/#u
> https://kernelnewbies.org/Outreachyfirstpatch
>
> Please let me know where I may be able to clarify the instructions.
>
> Hold onto these, and resubmmit when appropriate.
>

Thanks Alison for clarifying!. Sevinj did check with me on irc before
sending.., he had accidentally started the project tasks but has now
gone back to finishing his cleanup patches.

Sevinj, thanks for sending the results!. good luck with the cleanup patches.
