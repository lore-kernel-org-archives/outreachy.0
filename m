Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C03C158D91
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 20:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722977247; cv=none; b=GTHhMxCGhytwVz4IWf9XSX8ioLl+MYfGweGNCIKMxxE1kF+9RwK88PnH0eIDzFllF+dDTlFtlT35H8vckhd/87kuYd9HlxGyvEoMrdHP4CfIWCwwVWq5HcykOv+QVtDDJq9ia6MJfMuwfU5wvrv/VQeM2eEh7xbH8+VuYoiifAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722977247; c=relaxed/simple;
	bh=iNiCv/tWWg8EntneQR9N42nc9zfctX2Eyo2IjjLXles=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ShJbhCy9M57brblb1S+HbMDwlK6SUYvLoY3R6QCbB5YAOJ7JyZuIreC01aZbmSsJnzu1T8eQob4oowwRNTgGTS0LWY3ka7Oa5FgdlgijfndZHEA2g7Wn6U3NbkekO2SSZBSzhwi0Z5kJAkSiDZn7DIXmoPhoHFEhfQ6Ijv5u8NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=kTZgReKD; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="kTZgReKD"
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-428063f4d71so89545e9.1
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 13:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1722977244; x=1723582044; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SpIQih8KvxtMB9HL2JerR868gTSsYiklZU/ALdGs0Ro=;
        b=kTZgReKDLvOVsKIaXwyW1qEHmgV/7idUH7ka0XapApmaFZsd5FwMGsYO+1HFLBq1Go
         4BBLvwo9NRVfBaHo7NWoWN+3D2UX+ojLqe7Q0wokK1bsKwxpoD/GReizm2c+0oxdnKY2
         9nNzSJq577/AjYm8OXZyjIg2cXYDTN2SZfdR4AufXJ9rB/h+fJRBIDlrsMU9SknpEgjF
         H+YIXHiqyDNsZaQOklHaLarMrhorJxXoUvxLOv0ARem1QFbaBsOgFWMtw4RGTm5+Qg2x
         Ze1bNtOuFB5W6dSscF8FUJM214MzFR/bwvjyKfW6f6jpI7HOvIng8yQNnGI35IGhYXo4
         rbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722977244; x=1723582044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpIQih8KvxtMB9HL2JerR868gTSsYiklZU/ALdGs0Ro=;
        b=oEZXuQfzoq+8rMTGXexFp5LzYANn+KRhyiohNLP7FsZLqLbUVlTWa4FUxq07tMDD/d
         gH42/EwqF+Mt5j8sqamiaCGuVNE/7vmbqNNHDdWH5mIdqNevbmLkDkaMVb5oxH1JebXX
         UXo2JRJRJnvqi5qBI0WBtVTJhX8i4WdLedBKmLx2hVIbelKOYDGqFDtaf2l2ApGbTJG/
         nX/xt6x/2doaYDb+9Cd4xrID/GZq9H0yI49gKfaNAZpe2BfQ04bHLrEHzpQS/PBm884Q
         +Ma7j590NXzJ8zFnHNIVnexaX/Sj65LTuoOlzThJWLT/0u9XB4pc5r2x8j4sQAETQA0x
         a9kg==
X-Forwarded-Encrypted: i=1; AJvYcCVBY4Bqbh8lWhkEdqdwEz9QbGlN5g1wMXPv8DXm9qWlvRHdnN6mteUv7a5wPEcY2uhMN6xPx0Qak4nv6qmG0EHHh1FIF3SoOqaB
X-Gm-Message-State: AOJu0YwIlHd9EkanD6T1wJHI6cMsLMkUM+KKLihGe/aJLxebc3iCo4at
	bY6m8AhC70Xh7b9aDDlRxquB0d8+J86nTu5e0vqHwatDab19eA6165+fIzjcpi29tCyuawWh7rj
	W6LwXJaYbmdmRXxyJZy0RhhArKWbDVUnQJbPT
X-Google-Smtp-Source: AGHT+IFnLFSvEc9rWyHW8xXfw+Dz/FmVeodJf43WAbqQSInymwYsOkKLiGreK4c1sUiRw4gA7f7QLpsQN6QwUfSSKnY=
X-Received: by 2002:a05:600c:3d12:b0:426:66a0:6df6 with SMTP id
 5b1f17b1804b1-429039cb750mr267845e9.0.1722977243051; Tue, 06 Aug 2024
 13:47:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1722570749.git.fahimitahera@gmail.com> <e8da4d5311be78806515626a6bd4a16fe17ded04.1722570749.git.fahimitahera@gmail.com>
 <20240803.iefooCha4gae@digikod.net> <20240806.nookoChoh2Oh@digikod.net>
In-Reply-To: <20240806.nookoChoh2Oh@digikod.net>
From: Jann Horn <jannh@google.com>
Date: Tue, 6 Aug 2024 22:46:43 +0200
Message-ID: <CAG48ez2ZYzB+GyDLAx7y2TobE=MLXWucQx0qjitfhPSDaaqjiA@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] Landlock: Add abstract unix socket connect restriction
To: =?UTF-8?B?TWlja2HDq2wgU2FsYcO8bg==?= <mic@digikod.net>
Cc: Tahera Fahimi <fahimitahera@gmail.com>, outreachy@lists.linux.dev, gnoack@google.com, 
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com, 
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org, 
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 6, 2024 at 9:36=E2=80=AFPM Micka=C3=ABl Sala=C3=BCn <mic@digiko=
d.net> wrote:
> On Sat, Aug 03, 2024 at 01:29:09PM +0200, Micka=C3=ABl Sala=C3=BCn wrote:
> > On Thu, Aug 01, 2024 at 10:02:33PM -0600, Tahera Fahimi wrote:
> > > This patch introduces a new "scoped" attribute to the landlock_rulese=
t_attr
> > > that can specify "LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET" to scope
> > > abstract Unix sockets from connecting to a process outside of
> > > the same landlock domain. It implements two hooks, unix_stream_connec=
t
> > > and unix_may_send to enforce this restriction.
[...]
> Here is a refactoring that is easier to read and avoid potential pointer
> misuse:
>
> static bool domain_is_scoped(const struct landlock_ruleset *const client,
>                              const struct landlock_ruleset *const server,
>                              access_mask_t scope)
> {
>         int client_layer, server_layer;
>         struct landlock_hierarchy *client_walker, *server_walker;
>
>         if (WARN_ON_ONCE(!client))
>                 return false;
>
>         client_layer =3D client->num_layers - 1;
>         client_walker =3D client->hierarchy;
>
>         /*
>          * client_layer must be a signed integer with greater capacity th=
an
>          * client->num_layers to ensure the following loop stops.
>          */
>         BUILD_BUG_ON(sizeof(client_layer) > sizeof(client->num_layers));
>
>         if (!server) {
>                 /*
>                  * Walks client's parent domains and checks that none of =
these
>                  * domains are scoped.
>                  */
>                 for (; client_layer >=3D 0; client_layer--) {
>                         if (landlock_get_scope_mask(client, client_layer)=
 &
>                             scope)
>                                 return true;
>                 }
>                 return false;
>         }
>
>         server_layer =3D server->num_layers - 1;
>         server_walker =3D server->hierarchy;
>
>         /*
>          * Walks client's parent domains down to the same hierarchy level=
 as
>          * the server's domain, and checks that none of these client's pa=
rent
>          * domains are scoped.
>          */
>         for (; client_layer > server_layer; client_layer--) {
>                 if (landlock_get_scope_mask(client, client_layer) & scope=
)
>                         return true;
>
>                 client_walker =3D client_walker->parent;
>         }
>
>         /*
>          * Walks server's parent domains down to the same hierarchy level=
 as
>          * the client's domain.
>          */
>         for (; server_layer > client_layer; server_layer--)
>                 server_walker =3D server_walker->parent;
>
>         for (; client_layer >=3D 0; client_layer--) {
>                 if (landlock_get_scope_mask(client, client_layer) & scope=
) {
>                         /*
>                          * Client and server are at the same level in the
>                          * hierarchy.  If the client is scoped, the reque=
st is
>                          * only allowed if this domain is also a server's
>                          * ancestor.
>                          */
>                         if (server_walker =3D=3D client_walker)
>                                 return false;
>
>                         return true;
>                 }
>                 client_walker =3D client_walker->parent;
>                 server_walker =3D server_walker->parent;
>         }
>         return false;
> }

I think adding something like this change on top of your code would
make it more concise (though this is entirely untested):

--- /tmp/a      2024-08-06 22:37:33.800158308 +0200
+++ /tmp/b      2024-08-06 22:44:49.539314039 +0200
@@ -15,25 +15,12 @@
          * client_layer must be a signed integer with greater capacity tha=
n
          * client->num_layers to ensure the following loop stops.
          */
         BUILD_BUG_ON(sizeof(client_layer) > sizeof(client->num_layers));

-        if (!server) {
-                /*
-                 * Walks client's parent domains and checks that none of t=
hese
-                 * domains are scoped.
-                 */
-                for (; client_layer >=3D 0; client_layer--) {
-                        if (landlock_get_scope_mask(client, client_layer) =
&
-                            scope)
-                                return true;
-                }
-                return false;
-        }
-
-        server_layer =3D server->num_layers - 1;
-        server_walker =3D server->hierarchy;
+        server_layer =3D server ? (server->num_layers - 1) : -1;
+        server_walker =3D server ? server->hierarchy : NULL;

         /*
          * Walks client's parent domains down to the same hierarchy level =
as
          * the server's domain, and checks that none of these client's par=
ent
          * domains are scoped.
