X-GM-THRID: 6753896393761357824
X-Received: by 2002:a2e:89d3:: with SMTP id c19mr15348855ljk.201.1572786300794;
        Sun, 03 Nov 2019 05:05:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:40d7:: with SMTP id n206ls1029590lfa.10.gmail; Sun, 03
 Nov 2019 05:04:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqz4Kkz2CsjeoFSB2nzhjtst+M1Y/eHyxekslG1YpU6k1j/m49E6BBKQjdbmiz571vkIDTLP
X-Received: by 2002:ac2:4a6c:: with SMTP id q12mr13069422lfp.68.1572786299855;
        Sun, 03 Nov 2019 05:04:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572786299; cv=none;
        d=google.com; s=arc-20160816;
        b=AQcs8HuysubmNiKGKEJi4rdwfvDy+ZbdDckWRZO02M1s8yZQvpzEiBjUyEs3DxRicy
         jsTtcRFG+8IzEVnuyBD1i6QDhtHNg2/wuleUx2k6OghWvfkiRQHG19BZJscRQC8QS1fc
         p8QQPee+GrgqxfEQiXycjanvWhfSRI69fWAnVD8746Rf3IXb6shjSwl5LJ2pF0Zj/Ruc
         8SU9Va24o2X3FrdZeEDUm1Ej2YV8+XS8zTlTEvir1rhDFtxXj3q9VOTgPXJPSCiM6Z7E
         qyFnF4jkeMTIBViFssa+3GLY60aHrZOi20MMtR3xmCWBIJI7Hc21yRv3V2zSktH0njew
         a/IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bQmFNScNx0rB0Maofv/M46qA8Ev666HjzNIW64WpK7w=;
        b=iGmzGIYej4SF4NyjFLkNkEfSwoP/Brj7/mcXRTY8tFbN+FCjIavsMO8xzK1VYHZpYc
         haPBSSX2BqVRMaYWnXdYZh2b3GOoxUaYrhZDWWHOVpILbtCHRBn/O2T+kMauUQhi2nTT
         QWiXt/SgShoxGk2OkrQqZkOcXCVKGIi83RM8Y+k+J7aAZOUWiIpGStXlv+x1hjBePmQc
         nl+uPdSsZJ/GNgvLWsdALG9NxwAe8rogYj2M2q7J96pQa9o6fa21R0/Ml/0avz+NYDk+
         p7ZhKP/UfK9yox7fDbe1iSF2opys1Jp92MXBQkOnIp66Z5djRUtNvLw9O4JZKx0uPW37
         DcCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b="IOE/2/cn";
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.17.21 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
Return-Path: <wahrenst@gmx.net>
Received: from mout.gmx.net (mout.gmx.net. [212.227.17.21])
        by gmr-mx.google.com with ESMTPS id k20si277667ljg.0.2019.11.03.05.04.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 05:04:59 -0800 (PST)
Received-SPF: pass (google.com: domain of wahrenst@gmx.net designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b="IOE/2/cn";
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.17.21 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1572786297;
	bh=8DepOSdltsHMGjI911RcOJ2DqjPPXNJLsOlhwIOlo5Y=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=IOE/2/cnbX/3Dy+AtIkX/igRNHpRX5BYV4Mc4otgF3Fn9lAdC7E1HTAOromsqB/yu
	 JmzPuI6R4QxPfMBd5u61dosvs9ZBgyYdpG35eARFUJyMPf/OZrxZhzVTTB0exKz04H
	 v0poUxOuqeDcO84uwpzEaUdE7PTBva5SqRs8QVm4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MacOQ-1hpAzD2mOA-00cDeg; Sun, 03
 Nov 2019 14:04:57 +0100
Subject: Re: [Outreachy kernel] [PATCH v5 07/10] staging: vc04_services:
 Renames remote use callback
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
 outreachy-kernel@googlegroups.com, eric@anholt.net,
 gregkh@linuxfoundation.org
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
 <5ea44f2d87ff127023dffb70da182e32faac39e8.1572755439.git.jamal.k.shareef@gmail.com>
 <alpine.DEB.2.21.1911030843440.2744@hadrien>
 <afd4d5df-06c8-4cfb-ead0-7ce3e3acd2bd@gmx.net>
 <alpine.DEB.2.21.1911030939170.2744@hadrien>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <cdcb69af-ac74-b1b6-6090-6c98726ab41d@gmx.net>
Date: Sun, 3 Nov 2019 14:04:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1911030939170.2744@hadrien>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Provags-ID: V03:K1:9xoxnWserIlk1KnK8stPtMuEGvgzwYvk6tlPZbQ8LE1esKnw09O
 mr5D6VKiNd1nxgKNr35vrn337Oc6lZjK7zBpLhj6+0MGNoGRe/5HYoCGXAxzFrORI9VH8XJ
 22rJyX0mnhT+06pZab7gYoN3/yN8yvB8EBxLQV1Lt2fE1v02FA/k8Za4gXyxM5pjLFGKXye
 oIciTI5z292tnzqHOq3wA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3EREtqrNGYY=:W7Q6UbBJ63gUS+KalPRN1m
 1czg1O5gjMMC/pKMt1aBQjXHuyHHd6FyJ+KJQ5QcPx4X7FtnBEB7FfiH9PQX3HrpfPj7VAc2/
 ucKjkzJ0paGzBppXj+NGC4npzQM+qX42yB0ca1/Nm1P792fykA2rVmlgdfB+9/qwF8p+GuX0J
 Ogw93wtmQ2J3e5TXot3AsehDjmiTQeUXkvDgNj3uzbZZ6+87Ir/o1/9DHNU8IUTQUof+3wIXW
 JmU3hFyAHufHeKL2yUHIi5rs7pCpOxQZqkoL0cMcu/PdphwJPz3JCsMSWcP8/X8ARm6fTKgvt
 4a/Qys0/JlO1ojReP/7VIzdU55969YkvfnwVGxRT8GNm18Jw7XgCYKcUXV/luP45p6El8cYh1
 cLOi+j1AnA7V6xWxbtJ3H86THAJwd+KOPLJLK42Y2ND0fBDiHoGa+o05jiK/glFkaBIpGJxVP
 Tb8TdoqOro6syoxwDdFuIfYROC9ylOYawXmlkPyINWRy13sBOhP7kYB3a3uuKURvG/Ky70SJu
 72mriAlNfrGGWpW++7WtrUR/iZ11J2Mn3sSJsOfOQrFDwbX//zQY5OycWJ2wLudz099MIaWA2
 q4BdpOGWllIxwlBVMNAHsK7xK5QLXsRuBeDkLsM8rzj+lALIAPxE2H0L3UGoxxgXkRLyALJjV
 ZjPqrXu18vtvlLlYIOXdwmEJbIvcc0Lim+Q7T8hieosBK9HxPArszNkNM6KSB1Wez+5E0mB3e
 lJWwwVkv7taczd5WWjOuPSVI9jYQyDmHORk/YqQOaJ4pzPYJxCysYQdNUnMi5Ijyu0/Mm6XKH
 Ea8IdxLzuUrIRVittc9+8A5Eg84elLHbraG5qaBmDL3oSM5azMFAvn/u5TI51DTZrMigF3qkJ
 7glJNYBPk9fQybVpSYoKp0aGY8GiPpirvuQ6y0CVvVFnTGN1/zNie+/sBfcmGEneYgBU73sOO
 cyRqWOdHdAV0o5j7VE8gCcYknq4RAp3UiTuJnxExYkUCWE+9u/N4idEfOkN4RvK2RUUBMkaka
 gl1yfzw5GB4jeXp4T4pnrc5BjKLFFjwiEwDY2o4FAW8qwrxUq0v8Tlr0lvrfkw6bYjRVU+aqt
 fnaOjNCKfRpJe/fSNe3Uq65gB3rcyMGYNDc3j4eLfkXmK4a/ziu9VQb3CEncpZMs4etPU0Mvf
 ed42jjed0L/Zq/JOtVD+sZKmqNNBPSqm+TLIWVkY6f/pMxhBpe+0KUEumEkehtZq82hW7btnn
 1F5B2dNaFhIwk0jywSeKgu2kdYR0OJaeiY45dvk0I0Bo2VGB75OmLYOyarSo=

Am 03.11.19 um 09:40 schrieb Julia Lawall:
>
> On Sun, 3 Nov 2019, Stefan Wahren wrote:
>
>> Hi Julia,
>>
>> Am 03.11.19 um 08:45 schrieb Julia Lawall:
>>> On Sat, 2 Nov 2019, Jamal Shareef wrote:
>>>
>>>> Renames remote use callback function pointer to match kernel style.
>>>>
>>>> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
>>>> ---
>>>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h | 4 ++--
>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
>>>> index 6f3d3b00066d..869ca218c515 100644
>>>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
>>>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
>>>> @@ -93,7 +93,7 @@ struct vchiq_config {
>>>>  };
>>>>
>>>>  typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
>>>> -typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
>>>> +typedef void (*vchiq_remote_callback)(void *cb_arg);
>>>>
>>>>  extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
>>>>  extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
>>>> @@ -136,7 +136,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
>>>>  	enum vchiq_service_option option, int value);
>>>>
>>>>  extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
>>>> -	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
>>>> +	vchiq_remote_callback callback, void *cb_arg);
>>>>  extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
>>>>
>>>>  extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
>>> Are any of these definitions actually useful?  It is suspicious to change
>>> a prototype without changing the corresponding definition, but grep
>>> suggests that there is none (and no use either).  And likewise no
>>> definition or use of the other two functions that we see here.
>> on the Raspberry Pi the roles of vc04_services are the following ones:
>> Linux (on the ARM cores) implements the client side as an open source
>> driver (this one) and the VC4 closed source firmware (on the VPU)
>> implements the server side. Both sides share a common code base. So it's
>> very likely that there are interface functions which are only
>> implemented on the server side.
> Thanks for the explanation.  Should they be dropped?  Normally, the kernel
> doesn't like code that is not reachable by any kernel code.  But perhaps
> for function prototypes it doesn't matter, since they are not executable.

I doublechecked the downstream tree which has more users of the
vc04_services. But there aren't any users of the last three functions.
So feel free to remove them.

Stefan

>
> julia

