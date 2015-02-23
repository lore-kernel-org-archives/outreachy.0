X-GM-THRID: 3110621675520
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,76c10796d304febc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr1666626lae.7.1424729973523;
        Mon, 23 Feb 2015 14:19:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.227 with SMTP id b3ls502854lak.58.gmail; Mon, 23 Feb
 2015 14:19:32 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr1722775lbc.22.1424729972096;
        Mon, 23 Feb 2015 14:19:32 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id ev8si781927wib.3.2015.02.23.14.19.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 14:19:32 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0LjJi3-1XolK80TwF-00dXwv; Mon, 23 Feb
 2015 23:19:31 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: Change char * array type as static const
Date: Mon, 23 Feb 2015 23:19:30 +0100
Message-ID: <5990540.RBqoLyRtGf@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424729565-6188-1-git-send-email-aybuke.147@gmail.com>
References: <1424729565-6188-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:ekI6g8DBqsdu3wkEGs8B9iaxrk+Fu2XnLT46Nwk0Hec/h+4p7Xc
 9IZKaDzA9UjuYY0uZKBpWUP/AveS9NTdmPc3xQ76IBhHjFzx4d0OK9gB89UizG349iWzJ4N
 x5vnIL4RCCuRbxo8ft1EqNfxLQUnTtRwegRknnFAexM2D3AqJqNdZf0lo6NHZmtdkZrwJ/y
 YpxkhzhqLO31So4Rl4e3Q==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 24 February 2015 00:12:45 aybuke ozdemir wrote:
> @@ -1481,7 +1481,7 @@ int
>  visorchipset_chipset_selftest(void)
>  {
>         char env_selftest[20];
> -       char *envp[] = { env_selftest, NULL };
> +       static char const *envp[] = { env_selftest, NULL };
>  
>         sprintf(env_selftest, "SPARSP_SELFTEST=%d", 1);
>         kobject_uevent_env(&Visorchipset_platform_device.dev.kobj, KOBJ_CHANGE,

Did you mean 'static const char *const envp[]'?

> @@ -1637,7 +1637,7 @@ parahotplug_request_kickoff(struct parahotplug_request *req)
>         struct controlvm_message_packet *cmd = &req->msg.cmd;
>         char env_cmd[40], env_id[40], env_state[40], env_bus[40], env_dev[40],
>             env_func[40];
> -       char *envp[] = {
> +       static char const *envp[] = {
>                 env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
>         };

The actual strings are not const here, and the pointers point to objects
on the stack, so what does this change accomplish?

	Arnd

