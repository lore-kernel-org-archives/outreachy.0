Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C39E146D6B
	for <outreachy@lists.linux.dev>; Thu,  8 Aug 2024 23:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723159035; cv=none; b=Cgrgeef+2CQGbjdOY9BX85IbwI/Y21r4uGki2mPqtutyWOUDqtb4/DK9O08zpslZlJ4bS7uilRnK23tS58YUrMdMpeTgpAHF56sPEDGLujSu3ag/B+0x9ms4WDbGn1HoEbz09bIm84WgLRZti9VbJEhwLz5wgbGANuwf0FyN6fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723159035; c=relaxed/simple;
	bh=oGZ+fBGsWn2MHHM/NCl28k4CugyRAdGQbp8r40/h/qM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YQ7nyQ/eM0spjfEC6j71zZ0mTwj1i63IncGJmRHdDbWTM2FYU9PwVf/oQjVwBx5VFANbu5629SE1nFKvtJAd5wCYEoXf7iZYgKb4wx+XId8GbmKh+QQwKeSzw4dRWSeC1GHMFDCqeh/U1P27YgKaPzj4W14aOuVPdoHWgYfBWi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MYt3GPDo; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MYt3GPDo"
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1fee6435a34so13644465ad.0
        for <outreachy@lists.linux.dev>; Thu, 08 Aug 2024 16:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723159033; x=1723763833; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fkIJwEGv5ERA4qnqV+owZl6TafPc0hnN549gs5sTWj8=;
        b=MYt3GPDoxxYDkrYMiAw/QFAri+KKDQKrLVFa7jrYwSwmOOU6FOzQX7MPI6aPkvoKRh
         hXwx5lNeHySB8Tbbq0iKzJeKb6uqDI5ezoJEbog0v10+JQAWQ7RS3wJaDlQQLR493y/M
         vdlPOGFDQ/h073x3jA/4A54hgeJSlSmHcP5JbI8Zz95Gl6+5V1m9L/EeG2i3KrwuO1KG
         uIh73HkNMhQpjy7uqjA7NCHdj6LHAex4YaCQCdbiJzFUgJVLjNqGsB9yjBMbzzvxB58w
         Nh0+q14avUof6dhRCDj55NAYtlq1UKDs6+4koPcQHkLLC0UtrphjC/8BaNlpHBQfBo8g
         AX4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723159033; x=1723763833;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fkIJwEGv5ERA4qnqV+owZl6TafPc0hnN549gs5sTWj8=;
        b=kgvGcbNN2mMpLvg50WwAAhsFFhRjoAQCXfe20hlI5qqoTLkaIVtnY5KQ2T4bXnv2Du
         SPa4jeW+aAtMLemLLFzPSEx03MBixA88xmko6M6NIQ9/WkK6INbJ9X6q1sHNY83Zymlj
         S7vCimY0hg2QH6yWPaC8rbvWEYJ0boLg02vxwyg7HoDbWSQwV9mWia/VGmVxWsXanGLp
         yJInlsCWc8l2N2TSo/+YuWR5B4AboDawYpvPgRMVN+ibmTZKOQuE0DceTtayPkH8LHv1
         iyLzc0EYfwA1cam+F4jeImdbhkETZRSLV3Ypg+yxfg4WL4j3oRpdpvuGXjw3tDov/gmE
         3oyg==
X-Forwarded-Encrypted: i=1; AJvYcCUZ3Ag5buJDAulzgGWm/bsJ6w//c7DgAtY7CTmkwg68TnrCfjwixG/F/lcMOevwEOkG6W3n1tSloUH9DXq+bGEAi3hpaS0e28D0
X-Gm-Message-State: AOJu0YyK4rHgTZzbHDWXULfNDrw2RAkunzDvGZbsJNAMpoh8DOx+pkn2
	uJjGRohgAQmNXR8uCe64rqnJojlk0FyL7loxVymJ00ZxEcgOEPA6
X-Google-Smtp-Source: AGHT+IGt9dfjgid3ag62XkwFWL28kPlGVKGAK1AsromM/qCkJ797VK52SiiGuJf5PhC3obEI0FXB+A==
X-Received: by 2002:a17:903:2310:b0:1fd:5fa0:e996 with SMTP id d9443c01a7336-200952bf73dmr47823845ad.43.1723159033403;
        Thu, 08 Aug 2024 16:17:13 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff5905ff30sm129461785ad.156.2024.08.08.16.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 16:17:12 -0700 (PDT)
Date: Thu, 8 Aug 2024 17:17:10 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: Jann Horn <jannh@google.com>, outreachy@lists.linux.dev,
	gnoack@google.com, paul@paul-moore.com, jmorris@namei.org,
	serge@hallyn.com, linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org, bjorn3_gh@protonmail.com,
	netdev@vger.kernel.org
Subject: Re: [PATCH v8 1/4] Landlock: Add abstract unix socket connect
 restriction
Message-ID: <ZrVR9ni4qpFdF0iA@tahera-OptiPlex-5000>
References: <cover.1722570749.git.fahimitahera@gmail.com>
 <e8da4d5311be78806515626a6bd4a16fe17ded04.1722570749.git.fahimitahera@gmail.com>
 <20240803.iefooCha4gae@digikod.net>
 <20240806.nookoChoh2Oh@digikod.net>
 <CAG48ez2ZYzB+GyDLAx7y2TobE=MLXWucQx0qjitfhPSDaaqjiA@mail.gmail.com>
 <20240807.mieloh8bi8Ae@digikod.net>
 <CAG48ez3_u5ZkVY31h4J6Shap9kEsgDiLxF+s10Aea52EkrDMJg@mail.gmail.com>
 <20240807.Be5aiChaf8ie@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240807.Be5aiChaf8ie@digikod.net>

On Wed, Aug 07, 2024 at 04:44:36PM +0200, Mickaël Salaün wrote:
> On Wed, Aug 07, 2024 at 03:45:18PM +0200, Jann Horn wrote:
> > On Wed, Aug 7, 2024 at 9:21 AM Mickaël Salaün <mic@digikod.net> wrote:
> > > On Tue, Aug 06, 2024 at 10:46:43PM +0200, Jann Horn wrote:
> > > > I think adding something like this change on top of your code would
> > > > make it more concise (though this is entirely untested):
> > > >
> > > > --- /tmp/a      2024-08-06 22:37:33.800158308 +0200
> > > > +++ /tmp/b      2024-08-06 22:44:49.539314039 +0200
> > > > @@ -15,25 +15,12 @@
> > > >           * client_layer must be a signed integer with greater capacity than
> > > >           * client->num_layers to ensure the following loop stops.
> > > >           */
> > > >          BUILD_BUG_ON(sizeof(client_layer) > sizeof(client->num_layers));
> > > >
> > > > -        if (!server) {
> > > > -                /*
> > > > -                 * Walks client's parent domains and checks that none of these
> > > > -                 * domains are scoped.
> > > > -                 */
> > > > -                for (; client_layer >= 0; client_layer--) {
> > > > -                        if (landlock_get_scope_mask(client, client_layer) &
> > > > -                            scope)
> > > > -                                return true;
> > > > -                }
> > > > -                return false;
> > > > -        }
> > >
> > > This loop is redundant with the following one, but it makes sure there
> > > is no issue nor inconsistencies with the server or server_walker
> > > pointers.  That's the only approach I found to make sure we don't go
> > > through a path that could use an incorrect pointer, and makes the code
> > > easy to review.
> > 
> > My view is that this is a duplication of logic for one particular
> > special case - after all, you can also end up walking up to the same
> > state (client_layer==-1, server_layer==-1, client_walker==NULL,
> > server_walker==NULL) with the loop at the bottom.
> 
> Indeed
> 
> > 
> > But I guess my preference for more concise code is kinda subjective -
> > if you prefer the more verbose version, I'm fine with that too.
> > 
> > > > -
> > > > -        server_layer = server->num_layers - 1;
> > > > -        server_walker = server->hierarchy;
> > > > +        server_layer = server ? (server->num_layers - 1) : -1;
> > > > +        server_walker = server ? server->hierarchy : NULL;
> > >
> > > We would need to change the last loop to avoid a null pointer deref.
> > 
> > Why? The first loop would either exit or walk the client_walker up
> > until client_layer is -1 and client_walker is NULL; the second loop
> > wouldn't do anything because the walkers are at the same layer; the
> > third loop's body wouldn't be executed because client_layer is -1.
> 
> Correct, I missed that client_layer would always be greater than
> server_layer (-1).
> 
> Tahera, could you please take Jann's proposal?
Done.
We will have duplicate logic, but it would be easier to read and review.
> 
> > 
> > The case where the server is not in any Landlock domain is just one
> > subcase of the more general case "client and server do not have a
> > common ancestor domain".
> > 
> > > >
> > > >          /*
> > > >           * Walks client's parent domains down to the same hierarchy level as
> > > >           * the server's domain, and checks that none of these client's parent
> > > >           * domains are scoped.
> > > >
> > 
