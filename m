Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A81290C
	for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 16:19:24 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id bx5so2510603pjb.3
        for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 09:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jF+7XsJvQubYWIPAvEs5hkX6L0Q08lTJaP8xCOUCXvs=;
        b=I02v4c0GEzgiAEwt0zHsFJUhufBZI8PrQxwY9UGFAT63n9OYFsrk+rqle3KujkmVp6
         6mwEiUKeyipvnLrVoF6VHuFapfqmQriFVqUYqYVnaAA9/Z3076wngeSbCRgoVNRzb/Qb
         Bbx5X+Iv1fgmA+iFf2el3wVIyEM93IKKd+rBxZrsky0DPKeZFqYziOXaeoYTuTIAns7H
         vWvnRXtfCvaqcpGngOepsONryuz8uXiEw4ucpYjgWWuqlQTr0/tgpi9B8Xmudc2qDtiT
         naW4qu2ZLdplTbmjj8ZcZGbG8WUpGfdhvoA+/DBx76ekVJ5Q6RCkz3yO+Oc+IRRYO11q
         d51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jF+7XsJvQubYWIPAvEs5hkX6L0Q08lTJaP8xCOUCXvs=;
        b=qgNzh8NliblSXgsXyHFME2OKBn1RG+7jjGn8k9gIYuGMQjfmIyvhDKp6GlAymZNqKm
         PsUVHBSrB9egHOu2VG5qEI4BVmfhXVY8+OrXeXMIh5skU+w0Nug9Qi+rZtUA5CgkafE5
         w00+Rd3InVkuDbZ3unS8kedq1917RPT2fDRDACUr0pVCiLkAXsKTtTzRn9tVQbpKd6hg
         +mrmjnu7BD0vh8X1H7RMh8PfCb1T2JeqyVqnbwWnjT9/yofKZRM5YPIlrjyL94uwhlYO
         KqsyYbpq37mbV79cs7tg1bvQv88jMaH4aLYr88V3wOow9OwsBDhS92NrKyn9CNM/zqyU
         9cWA==
X-Gm-Message-State: AOAM5334hh6uGwgFEO2T+D6h++UN7y+D14w6O7Ucyu78LJ32p9jwsuOa
	NGNlyRv6UmnMdnSjCl8PKj4vxmronoVrdtznpFA=
X-Google-Smtp-Source: ABdhPJxd91LS9dM0IvcceEl8HS45UPhkDbxhUUemXwjt0bAotCuyq31X2MsDc8Khu9jDiIB7KSh4TU83UeREFS++FzU=
X-Received: by 2002:a17:903:1212:b0:156:3ddc:84bd with SMTP id
 l18-20020a170903121200b001563ddc84bdmr42342593plh.70.1649866764103; Wed, 13
 Apr 2022 09:19:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <1859502.6tgchFWduM@leap> <20220412223603.GA1237891@alison-desk>
 <CAMWRUK6W4-3Fwh7BAQ_aSWYG4Dh=oSX-ZKgHuiO0QhKUwyCEOA@mail.gmail.com>
 <20220413041553.GA1239114@alison-desk> <CAMWRUK5N6fC9ZUAPXZ0sKao=nLF33WA3N4+HGZvJgHaiBnewFg@mail.gmail.com>
 <20220413152805.GA1241310@alison-desk>
In-Reply-To: <20220413152805.GA1241310@alison-desk>
From: Roopa Prabhu <roopa.prabhu@gmail.com>
Date: Wed, 13 Apr 2022 09:19:11 -0700
Message-ID: <CAGe6so8kMyGdBCx43DiuvzHEDDQwF8aqM5+5JY=0o5VuZ_Oh5g@mail.gmail.com>
Subject: Re: Should we Cc this list when submitting patches for subsystems
 other than "staging"?
To: Alison Schofield <alison.schofield@intel.com>
Cc: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, 
	"Fabio M. De Francesco" <fmdefrancesco@gmail.com>, 
	outreachy linux kernel <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 13, 2022 at 8:26 AM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Wed, Apr 13, 2022 at 08:14:07AM -0700, Sevinj Aghayeva wrote:
> >
> > How about non-kernel related changes? For example, I'm working on
> > improving https://mbuto.sh/mbuto/about/ with mentors. It's a script
> > that builds a minimal image that runs kernel selftests when booted
> > from; it speeds up testing kernel changes. Should I Cc them to the
> > list as well?
>
> Sevinj,
> Maybe my previous email covered this.
> The above sounds like something that all applicants exploring the
> networking project would be interested in following.
> Alison

yes, agree. Stefano and Sevinj's work will make mbuto usable for
everybody (possibly even non-networking folks running selftests).
