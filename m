Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9BA87C
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 11:38:46 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id r13so40916746ejd.5
        for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 04:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=0d4AxKo9hzK8El/nT+spKfL7yqHtgU3d4dBjfHC/SYA=;
        b=b6w2wDUX/StoS/fvjzvLJF7BxDaHxVr7qd87czTqaELu9n+tYCFm0GzNTb+5qsYfX5
         5EWNTuj3I5HPd87g6Eap7EW8cyHOWLggt8/I/1pAznxT7eRToc2HJReBy/nqkPB/qPD1
         pNqDnTRvPeVW9zkkp8p5ql32HLjpa4N/6+4paC5fYvU2O0naFKOZD+lM66QyRCD3pQuS
         CZiAc6tqXpbUqF3WvEorqO7K6DfLIivn5+VJYkD5bwEQ7XfQSfrVTsGyubHLhyX1Qbik
         wNdj9emrYeh69IB6uBu3x/VVT9/CBqjYgdMt1yCC7GcQjbBx5lSh8rJysvHLdBHsgEjn
         14UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=0d4AxKo9hzK8El/nT+spKfL7yqHtgU3d4dBjfHC/SYA=;
        b=yS2IVSLiiIVA1iIXg2vl0v7Ifdct+YrZ41/IkAYX/vaWXf8G+MZkLkEmXgggPlhjb7
         bwqAAnIFjPQpmh3fN/Q2RVcoaGel+r4C19OvuuIpDfcqZOZexBnOuFqaBYGl+xn5f1W/
         /EtSxCOfI7Y1JplChaYwvoKvOqu6saBAeHIAY9CSuIHvASWvcV+bFAv77/V2Sjmy/mxP
         Ei9oAueJJSbQ3Ntok7YDAymGLAxEr6qB4qKGNYoRogD8Fpk3/RQ5ep3OVtTTREB2PQk9
         lyziSKvilY0A38nM+uMTzPJ6WxgGYIZcqBV77cllPirc0osGmjMUKCyGAPQVime/VtTT
         bOaA==
X-Gm-Message-State: AOAM5301vtbPX5WRa85D6SmgU42pHbVeFirCFbA99U+rigWox/K9gyQm
	Gm0U3B7NsXVRWdxrnKCUcON6+gkPEMLqwfQfYQA+Dor5m1bjoLpq
X-Google-Smtp-Source: ABdhPJz2G0aEUIzyOW3y25xwbiCfTwyb13uo0H5+VGvqglzkXZV0Vw5w4wxxxi9ySISFBDedhCXL+Puzyl16KWDjnNE=
X-Received: by 2002:a17:906:c08a:b0:6ce:36f8:bfe8 with SMTP id
 f10-20020a170906c08a00b006ce36f8bfe8mr38738710ejz.52.1648640324458; Wed, 30
 Mar 2022 04:38:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Formasit Fokunang <formasitf@gmail.com>
Date: Wed, 30 Mar 2022 12:38:32 +0100
Message-ID: <CAL1a2snCAKCbAYh4jbtFHRK_nyCv8oaEuC39D3bQSPbjAx+oMw@mail.gmail.com>
Subject: Build error
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello,
Thanks to Mike and Rebecca I was able to solve the problem in the
./include/linux/elfnote.h .and some others that came up by editing the
scripts/config file as suggested .but on building again I have this
error. I searched and I found it concerned something concerning
Panhole and my allocated disk space . I added the disk space  but it
still didn't work.
Thanks to anyone who can help with an idea

FAILED: load BTF from vmlinux: No such file or directory
make: *** [Makefile:1155: vmlinux] Error 255
make: *** Deleting file 'vmlinux'
