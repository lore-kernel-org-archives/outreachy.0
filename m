Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B7F14D702
	for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 21:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723757292; cv=none; b=Rolqzza4b28aAS0X1gCaDAVAmzwkzVqO/E0Q6jvXaa3Ts7ceklxeQ8Ub3k7KwCgzGVT7k5CMzjTve48jBSjo2OFRpEuejN+9SRyrqkCYrdHhLrDGCjy526TMAxkOg3DpxfFkcCIasWHuxcQdnJPPVMZ/Q09ghK/KX52Eoa/waz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723757292; c=relaxed/simple;
	bh=jv9kPifNQM215uQBs9ws5FlWKr9VkxuphUrKDyJRKS8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iO4Q6TO/YU5cYIkUAr/WkBTLezIHU55VObmoCqgQtPJaphIkRuhiCn01RPeDO13ksfA+2d03B1NpGfIIJzZWU4GL9yjX7bktppIRk60cGTZ2vIggwLiUt7BW2kb3zcsLfRiGOxM3MGHIDT3VQzySzZ5PXsAyRND8nVWYjyXAFfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iYugOjhs; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iYugOjhs"
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-20203988f37so3681135ad.1
        for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 14:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723757290; x=1724362090; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YxPV3ZREq4n/G2jT071ytxKeDYYaNwjp4tCRsSv8bG8=;
        b=iYugOjhsmA7qsfOaT0L0dPeJBSmqLpK9rXFd7dtTC9VSNIRwR6LsAp+8p0MnlzVjJs
         A+Kb8ws1eygIXaQEMyt5qIihyAJz3GtlxnSx+PyLV9Nj+D0y/yGaR9Kq9miauWFsj02P
         Mv4rroB9E1X69gdoDo4VQgh9o8I97S3Wbk8crQiDQ17ODhTChwwDt/Am+hZmy4J8bvWG
         4Uo/AMZCpgZl8Z6f7NuXZuCLAIHis6dttWoYyUsOiYCutUGMXitAfXANOTR7/nROVF2T
         ydlLM9XMTtEbK8l4P2rhm//cA55hJQZqigmYdOPDR8IF5hVbn6KCOv8gwepUNsTXHqyj
         sYqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723757290; x=1724362090;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YxPV3ZREq4n/G2jT071ytxKeDYYaNwjp4tCRsSv8bG8=;
        b=c4/uVnWyVZz099820mPWaObNqC4+LcWSnTGyu3M2C73cLnrV412SbCzVbOSC1L42bI
         rZV6pj7Fh1Z4rgOz5PB8DQKuF1MV5r5GwwAkoZ0sgScmn27N/QmGfjP+rkMDF8EZ/CDA
         1W85sCxUGpfe3Qv8Rrkco3WOLSDDneWQUuJ3FEmZ+zRy8C03SGQ34leDFQ85XU4SGftN
         w+DLoJJtF3wKhgoLSSb3Zr8MeDDdxh4rJy/p4EWD2pvvybnHsaUNYymCSaAkcAF3InKT
         eUHdy52q4gZgVguKB492LjcGCyt3E96thM0B5Ud6XpV/Mwd8kuXdGhMBw30MVgbOzH+Z
         LMUA==
X-Gm-Message-State: AOJu0Yyrs8V6e39FGz2g3oWvrlWBsS90YWlXK2Pyl2aIQZs9gw4rSPUG
	4ni+br8fPBT+JN9rodVcCJSiL+4Sadvo34qBoUkFoPFGAAPiDkkC
X-Google-Smtp-Source: AGHT+IGSlCcvuEjiEbfNez6PbFPzli6qRWOsJ2K6awcqpLgg/grw92Lj2XgLglt9a0YzocdAYjJxBQ==
X-Received: by 2002:a17:902:ce91:b0:202:1fe:9fdd with SMTP id d9443c01a7336-20203ea075fmr12772205ad.24.1723757290281;
        Thu, 15 Aug 2024 14:28:10 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201f0379e19sm14239435ad.136.2024.08.15.14.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 14:28:09 -0700 (PDT)
Date: Thu, 15 Aug 2024 15:28:07 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: Jann Horn <jannh@google.com>
Cc: outreachy@lists.linux.dev, mic@digikod.net, gnoack@google.com,
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Subject: Re: [PATCH v3 2/6] Landlock: Adding file_send_sigiotask signal
 scoping support
Message-ID: <Zr5y53Bl6cgdLKjj@tahera-OptiPlex-5000>
References: <cover.1723680305.git.fahimitahera@gmail.com>
 <d04bc943e8d275e8d00bb7742bcdbabc7913abbe.1723680305.git.fahimitahera@gmail.com>
 <CAG48ez2Sw0Cy3RYrgrsEDKyWoxMmMbzX6yY-OEfZqeyGDQhy9w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAG48ez2Sw0Cy3RYrgrsEDKyWoxMmMbzX6yY-OEfZqeyGDQhy9w@mail.gmail.com>

On Thu, Aug 15, 2024 at 10:25:15PM +0200, Jann Horn wrote:
> On Thu, Aug 15, 2024 at 8:29 PM Tahera Fahimi <fahimitahera@gmail.com> wrote:
> > This patch adds two new hooks "hook_file_set_fowner" and
> > "hook_file_free_security" to set and release a pointer to the
> > domain of the file owner. This pointer "fown_domain" in
> > "landlock_file_security" will be used in "file_send_sigiotask"
> > to check if the process can send a signal.
> >
> > Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> > ---
> >  security/landlock/fs.c   | 18 ++++++++++++++++++
> >  security/landlock/fs.h   |  6 ++++++
> >  security/landlock/task.c | 27 +++++++++++++++++++++++++++
> >  3 files changed, 51 insertions(+)
> >
> > diff --git a/security/landlock/fs.c b/security/landlock/fs.c
> > index 7877a64cc6b8..d05f0e9c5e54 100644
> > --- a/security/landlock/fs.c
> > +++ b/security/landlock/fs.c
> > @@ -1636,6 +1636,21 @@ static int hook_file_ioctl_compat(struct file *file, unsigned int cmd,
> >         return -EACCES;
> >  }
> >
> > +static void hook_file_set_fowner(struct file *file)
> > +{
> > +       write_lock_irq(&file->f_owner.lock);
> 
> Before updating landlock_file(file)->fown_domain, this hook must also
> drop a reference on the old domain - maybe by just calling
> landlock_put_ruleset_deferred(landlock_file(file)->fown_domain) here.
Hi Jann,

Thanks for the feedback :)
It totally make sense.
> > +       landlock_file(file)->fown_domain = landlock_get_current_domain();
> > +       landlock_get_ruleset(landlock_file(file)->fown_domain);
> > +       write_unlock_irq(&file->f_owner.lock);
> > +}
> > +
> > +static void hook_file_free_security(struct file *file)
> > +{
> > +       write_lock_irq(&file->f_owner.lock);
> > +       landlock_put_ruleset(landlock_file(file)->fown_domain);
I was thinking of if we can replace this landlock_put_ruleset with
landlock_put_ruleset_deferred. In this case, it would be better use of
handling the lock?

> > +       write_unlock_irq(&file->f_owner.lock);
> > +}
> > +
> >  static struct security_hook_list landlock_hooks[] __ro_after_init = {
> >         LSM_HOOK_INIT(inode_free_security, hook_inode_free_security),
> >
> > @@ -1660,6 +1675,9 @@ static struct security_hook_list landlock_hooks[] __ro_after_init = {
> >         LSM_HOOK_INIT(file_truncate, hook_file_truncate),
> >         LSM_HOOK_INIT(file_ioctl, hook_file_ioctl),
> >         LSM_HOOK_INIT(file_ioctl_compat, hook_file_ioctl_compat),
> > +
> > +       LSM_HOOK_INIT(file_set_fowner, hook_file_set_fowner),
> > +       LSM_HOOK_INIT(file_free_security, hook_file_free_security),
> >  };
> >
> >  __init void landlock_add_fs_hooks(void)
> > diff --git a/security/landlock/fs.h b/security/landlock/fs.h
> > index 488e4813680a..6054563295d8 100644
> > --- a/security/landlock/fs.h
> > +++ b/security/landlock/fs.h
> > @@ -52,6 +52,12 @@ struct landlock_file_security {
> >          * needed to authorize later operations on the open file.
> >          */
> >         access_mask_t allowed_access;
> > +       /**
> > +        * @fown_domain: A pointer to a &landlock_ruleset of the process own
> > +        * the file. This ruleset is protected by fowner_struct.lock same as
> > +        * pid, uid, euid fields in fown_struct.
> > +        */
> > +       struct landlock_ruleset *fown_domain;
> >  };
> >
> >  /**
> > diff --git a/security/landlock/task.c b/security/landlock/task.c
> > index 9de96a5005c4..568292dbfe7d 100644
> > --- a/security/landlock/task.c
> > +++ b/security/landlock/task.c
> > @@ -18,6 +18,7 @@
> >
> >  #include "common.h"
> >  #include "cred.h"
> > +#include "fs.h"
> >  #include "ruleset.h"
> >  #include "setup.h"
> >  #include "task.h"
> > @@ -261,12 +262,38 @@ static int hook_task_kill(struct task_struct *const p,
> >         return 0;
> >  }
> >
> > +static int hook_file_send_sigiotask(struct task_struct *tsk,
> > +                                   struct fown_struct *fown, int signum)
> > +{
> > +       struct file *file;
> > +       bool is_scoped;
> > +       const struct landlock_ruleset *dom, *target_dom;
> > +
> > +       /* struct fown_struct is never outside the context of a struct file */
> > +       file = container_of(fown, struct file, f_owner);
> > +
> > +       read_lock_irq(&file->f_owner.lock);
> > +       dom = landlock_file(file)->fown_domain;
> > +       read_unlock_irq(&file->f_owner.lock);
> 
> At this point, the ->fown_domain pointer could concurrently change,
> and (once you apply my suggestion above) the old ->fown_domain could
> therefore be freed concurrently. One way to avoid that would be to use
> landlock_get_ruleset() to grab a reference before calling
> read_unlock_irq(), and drop that reference with
> landlock_put_ruleset_deferred() before exiting from this function.
Correct, I applied the changes. 
> > +       if (!dom)
> > +               return 0;
> > +
> > +       rcu_read_lock();
> > +       target_dom = landlock_get_task_domain(tsk);
> > +       is_scoped = domain_is_scoped(dom, target_dom, LANDLOCK_SCOPED_SIGNAL);
> > +       rcu_read_unlock();
> > +       if (is_scoped)
> > +               return -EPERM;
> > +       return 0;
> > +}
> > +
> >  static struct security_hook_list landlock_hooks[] __ro_after_init = {
> >         LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
> >         LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
> >         LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
> >         LSM_HOOK_INIT(unix_may_send, hook_unix_may_send),
> >         LSM_HOOK_INIT(task_kill, hook_task_kill),
> > +       LSM_HOOK_INIT(file_send_sigiotask, hook_file_send_sigiotask),
> >  };
> >
> >  __init void landlock_add_task_hooks(void)
> > --
> > 2.34.1
> >
