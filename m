X-GM-THRID: 6810236750031486976
X-Received: by 2002:a62:2e42:: with SMTP id u63mr20211942pfu.69.1585683759418;
        Tue, 31 Mar 2020 12:42:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:834c:: with SMTP id z12ls5533475pln.5.gmail; Tue, 31
 Mar 2020 12:42:38 -0700 (PDT)
X-Google-Smtp-Source: APiQypJHq/Y70mZ2d6l48z/XYc2h1fj4InrhvB5eaDRmjvDo0o70xYUsEGHVuOc3RvXQMJ7jKB9W
X-Received: by 2002:a17:902:a504:: with SMTP id s4mr3576444plq.10.1585683758030;
        Tue, 31 Mar 2020 12:42:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585683758; cv=none;
        d=google.com; s=arc-20160816;
        b=c7AB7vqJ3F6uB8kXnmFuJ7PlKIgII1CMrkH/XSgN9SnY0X0MP+qcmt4P8FdZsIn5kH
         MyNnPg1cWgHNbqpkJUvjtEwJ5g22GHM8bfBryem9rLQPm14YpcAaNp9NBJ8IWqB595Jw
         d8MQ0Q9hZi+ACmnHAu7EmbR6UkY3aGZgwCRJZCuVG/kwqd8NhMYwq8owPDs+aksER363
         oMZjIrDp0fIdsEYejgLAlhZe6IAEjVl71wyk7rdocuIY3oieG7OSBZJ7y2uoozVbCku+
         P3mYFNxKlfU2oSd9r8K5ELgkRMjRIG3Ye3lO0UkSwdE5B1DDItWacxTmsbi8Mviv5kMu
         oJEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=dhvVBOX6bp9aIeTZ2NKvaop6maNXiu1byL4wN4dMgR0=;
        b=itS5WT3JuXyeMTvN2HSr63wJEvt128hwq8wnwco5e/U7hEDanaEhh2JOg1w48zuIdL
         L5kV+I08kjrDUxkPtp4SLw8/m5XCZfbYAnKdrRPZH/gZJsPrMdW+kY5cI0/pHNrRy1YP
         oELsuOLtgrRHlkba1RZEWn8eKM6WnvsL4HjY9Om+eEqsXm9Zzoy5tc0W5CDDfZo2gi5J
         UvmWjje+6fyoOpp2E1Pv5VhnZW8JLJWAVe/EraNtepcD1wsZCqlSHGTE03d3qpzzeozv
         x/oZr0VhnZjPgpynca80mC40wS98A3nWz6GFt8rD/L3jaRmGpiVU9DNfI+ZVloQp241j
         d4qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MLAf3adW;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id c3si203701pje.1.2020.03.31.12.42.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 12:42:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MLAf3adW;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id np9so1539884pjb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 12:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=dhvVBOX6bp9aIeTZ2NKvaop6maNXiu1byL4wN4dMgR0=;
        b=MLAf3adW13fTVMbZ1CDW0BqFW5tNASeJw1Fk49wCgNyiqjI6ko0NegnWfal4YPQ+sR
         N79A3rdGDoNJKxw0yTM/gxXzdUhJPadoRCDBq0AeNI3BXKsD1pZAyJjshp0VUa4UKhae
         xo1pDCUjlbjxWXLAK1bfpcnCg5C7OnZdweNZRlYDiww0I5UxFLKDNaxgl4K37wi2hTWf
         L6hZZlbFft5zwbk9lOItLKG90yFJINZrtgZmU6bDFNy664b9XqsDuHd+NHrqnw6ugC/D
         HtF0O7nlyZBg1QXuR7srOK9HT68e1gJVPt9i64L5DDYEou1EIawiFfy0JEMwBw3dJdkw
         sTuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=dhvVBOX6bp9aIeTZ2NKvaop6maNXiu1byL4wN4dMgR0=;
        b=A0r8okWgVp2CYlhJDkMkCZT+AjB+jypuG/riDwsvYBV6fijvFSePs9mX/HLdlrBxk7
         wsKnrdjxUL0WqTbCoDXZCJ0RF5Ee03jX0bJwqQ4Aam2EpN33d4tzl189fOz/Xvb031mQ
         f+99aqykl9tc5rnqJ9FG/JCQgXPZgNfHiyvA/wjSR5ZaAn22/xpdWBCdTLtklxfABQ4B
         +NKBM1U4R4QBeqmabhLQc66E+Hk77BEp5iiiVRJfzPQvrhLHk5LQ/xYNtWla6OKFtkSl
         Cz7SxC5j5Lu2Vk1XOBzDNTKbLik+m0D++fUy+KAo2Fx3o2R2MJV4tIVXD3JYSjO+gsbq
         Tp7w==
X-Gm-Message-State: ANhLgQ3wIJbBu75gc6mHLlw5HYP7AAH+xHhcbniDJl5qBOIqOz+03t+S
	+m1Fm0AWY4d7cbTTkl0uwMM=
X-Received: by 2002:a17:902:9042:: with SMTP id w2mr19271483plz.269.1585683757598;
        Tue, 31 Mar 2020 12:42:37 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id d206sm12965142pfd.160.2020.03.31.12.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 12:42:37 -0700 (PDT)
Message-ID: <e78323c6c6a7429ad084149b66a4cd025b9dbb15.camel@gmail.com>
Subject: Re: [Outreachy kernel] [Patch v2 0/3] staging: vt6655: Remove
 functions that are never
From: Briana Oursler <briana.oursler@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: julia.lawall@inria.fr, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Date: Tue, 31 Mar 2020 12:42:36 -0700
In-Reply-To: <20200331210823.50dbe9be@elisabeth>
References: <cover.1585630805.git.briana.oursler@gmail.com>
	 <20200331210823.50dbe9be@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-31 at 21:09 +0200, Stefano Brivio wrote:
> > Subject: [Outreachy kernel] [Patch v2 0/3] staging: vt6655: Remove
> > functions that are never
> 
> never...? :)
> 
It looks like my subject got cut off. Is it okay to just call it 'dead
code' in the subject of my revision? As in: staging: vt6655: Remove
dead code, leaving all the rest as is (outside of changes from other
feedback I may receive).

> On Mon, 30 Mar 2020 22:16:37 -0700
> Briana Oursler <briana.oursler@gmail.com> wrote:
> 
> > This patchset removes functions that are not called in the driver
> > but
> > are prototyped in card.h. Each commit limits its scope to one
> > function
> > definition and related documentation in code. References in the
> > developer's initial changelog were left in place.
> 
> What do you mean by this? Which references?
> 
Apologies, that is a mistake. Their changelog does reference a deleted
function elsewhere in the driver, but not in this file nor in the scope
of this patch series. I confused myself there, sorry for that. I'll
remove that reference from the cover letter.

Thanks,

Briana


