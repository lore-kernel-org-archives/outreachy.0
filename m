Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CF719B
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 04:32:31 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id h1so19287163edj.1
        for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 21:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=O148+PiwZ3ZBvmR46j37/E21ObER32A4fjGGbfM8VZM=;
        b=TfPrClA9sMBelmzQOvVqHevoP0Uv3vG3sQsDUBx9xWZpvdZ7OnveJGCc8xhSyAJvJo
         ItjWhH4gJsTt1Q3NBW47vBdU64WM2SKH9u+LDDWhbRWwUdc99thGB9TcCMLg7skkCXmL
         TpWVUDw22hBZtiC/t8SfCIpYLbOUF+K2A5JSUiWZ9ZTXm/Jr30r7j7MmIQAGi0+oOxoS
         ilneeT+8LuELtMXhZUs4cMFNbjOE86tzfbfifqb5GFw+ezXd36dk4/t7nT0eLWG74cHr
         da8Dg/3IBH3grhmQ8hcbh/evhOmLiZh/MdcBT9qdWKUf1MeiUQHiUX79fdukX8+7PjC3
         mx2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=O148+PiwZ3ZBvmR46j37/E21ObER32A4fjGGbfM8VZM=;
        b=DY9T9VPDeyHFtFRDwlmYBpp+ptn8oSfmtmzMpG64ComCNue577NtfuNQ7vF5571Dk8
         /URrRf3f7fK6nEqnEVlUtbGvi0dGV5JhFbcS5NUQ3gZKEjfKIecFagaBS1WeGicxtU/t
         tywZrfXccbUeDh43925tCMrgTyjb/r2wmb5qxyLCJ7OKh6SAHlx6PYsSWzwgRTxqsRlC
         fc22d9NKr+L/Kf0agg3nFvwpiNsp95zLjmHVCjwNbUZGc3b2oLMdVpNmkd0LI52Zh0ZY
         vsZ88VlTIgQKk8uJAT3pK3RXJzL8xn94zI8yYGfTk818DXjyKZJBkUkB33+XtYP1pl6y
         Rtng==
X-Gm-Message-State: AOAM530FOLWuFwzC7j0VQTiIjO5FCr/QBVQMatQJ1yb9aKJ7eySh32Nh
	/gW1Y16k7V5w+M0DNNBgR6rHQIHoDeoDu+Qt/lZ2cehVICQnHmlQ
X-Google-Smtp-Source: ABdhPJx6d/D0Sz6V0tYzcWFv+1da4Lbe4hyyhrmcQqhNT1OFdpHeiLI1DcUE+8htOrfDa/Jg+W/SZb5aw1ySj6J1YwM=
X-Received: by 2002:a05:6402:4491:b0:419:4aeb:a648 with SMTP id
 er17-20020a056402449100b004194aeba648mr1873574edb.411.1648528349178; Mon, 28
 Mar 2022 21:32:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Formasit Fokunang <formasitf@gmail.com>
Date: Tue, 29 Mar 2022 05:32:14 +0100
Message-ID: <CAL1a2sm42ebvt5zKNbQEdojR2vnQqvO6-v2+JGbEE4puxFXRzQ@mail.gmail.com>
Subject: Build Error
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
         I have this error when building my new kernel it occurs when
run the make -j3 command,though it continues to run after error but i
can't install the new kernel . I tried looking at the file at
./include/linux/elfnote.h to check if i could override the permission
but i couldn't figure out what exactly caused the error.
please i will really appreciate some help.

In file included from ./include/linux/build-salt.h:4,
                from init/version.c:11:
./include/linux/elfnote.h:74:10: fatal error: opening dependency file init/
.version.o.d: Permission denied
  74 |   struct elf##size##_note _nhdr;    \
     |          ^~~
./include/linux/elfnote.h:93:2: note: in expansion of macro =E2=80=98_ELFNO=
TE=E2=80=99
  93 |  _ELFNOTE(size, name, __LINE__, type, desc)
     |  ^~~~~~~~
./include/linux/elfnote.h:95:37: note: in expansion of macro =E2=80=98ELFNO=
TE=E2=80=99
  95 | #define ELFNOTE32(name, type, desc) ELFNOTE(32, name, type, desc)
     |                                     ^~~~~~~
./include/linux/elfnote-lto.h:11:24: note: in expansion of macro =E2=80=98E=
LFNOTE32
=E2=80=99
  11 | #define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 0
)
     |                        ^~~~~~~~~
init/version.c:49:1: note: in expansion of macro =E2=80=98BUILD_LTO_INFO=E2=
=80=99
  49 | BUILD_LTO_INFO;
     | ^~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.build:288: init/version.o] Error 1
make: *** [Makefile:1831: init] Error 2
make: *** Waiting for unfinished jobs....
