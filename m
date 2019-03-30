X-GM-THRID: 6674267883353145344
X-Received: by 2002:a2e:8912:: with SMTP id d18mr1548756lji.26.1553974376636;
        Sat, 30 Mar 2019 12:32:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5199:: with SMTP id u25ls488801lfi.4.gmail; Sat, 30 Mar
 2019 12:32:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxeTU27d31XoSgwj1Fclg1aLMyzsgDPlAAjjSVs75obBTmA54eywYz5Zj2+kPsB3lZ/ai/2
X-Received: by 2002:ac2:4aca:: with SMTP id m10mr1276969lfp.8.1553974375823;
        Sat, 30 Mar 2019 12:32:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974375; cv=none;
        d=google.com; s=arc-20160816;
        b=nFnQciBgrjODm0q/8f6S7NsUYrI4lH7skiE0UCE5QZiOc1MDJuNHULGqNxLAMKD8Mv
         L3Bp2JNLZo2jl8gcY3aswTDE/lH4lqV1raEQs9aPD4EXosbBKzIt/HuzvkhEXB33nOUn
         5Ay8b8gUi8CmgferJtFmcn0GogQyjb4SzjEKiyCJMSMRMhhsOgtapdQvOfZ2yFQ5YYuf
         h8Fifol0FkJfez81Z06O2ABmWlBhtWbNYE9g22JVYfFlDFYanTNJn7M4qqccEwevo3aj
         2/PeDt/74cJydJArfS6Lh9XPBnIT/KW6Avg3EJ6R7nlwSW4AnqrVshYq8yulP+2aWw/X
         lp9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pd/qI+6z4aVCETT+Q9Q+Anh4JiItDZaHx7bi9FDPuXQ=;
        b=FBdmIv6H0tzpUqQk1mMIw0jPhcNDr0LkkmBOl3WvpJ2xwX5l4ABKHHRlLO9Cm9hrh2
         r/+O56Rzoavt7Ho/8Qt321rMvE8U2sEHAOaMOgm4whHeGFmyirpGtklrfWALBfpQuebi
         pG6ddGj9P9nxvJ1JaRwYc4TBtVjO1kAmXcD2yjyaiTk1AvYVuHFUHUHrr745U5/sDOmS
         yq99l+r5kHG01Mtd0Ug/wudquZIgFF1viEavmfMSvZwVomIKrtOdvygj51sc/gBb/SJJ
         96Qdk295SX8+BxpnsRD/PDO4J+mvceowKo+afyrhTkPPS/YJORLYJJwKhPNkmkzDdqKi
         QGpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o16si323256lji.0.2019.03.30.12.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:32:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="301259990"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 20:32:54 +0100
Date: Sat, 30 Mar 2019 20:32:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/7] staging: rtl8712: use list
 macros
In-Reply-To: <20190330192742.65250-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903302032350.2608@hadrien>
References: <20190330192742.65250-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Himadri Pandya wrote:

> This patchset
> -  Replaces usage of container_of with list_entry
> -  Replaces a while loop with list_for_each
> -  Removes an unnecessary NULL check

It would be good to redo all of the log messages to explain why the change
is correct.

julia

>
> V2:
> - Include new patches for using list_for_each and removing unnecessary
>   NULL check
>
> Himadri Pandya (7):
>   staging: rtl8712: use list_entry in function _r8712_find_network
>   staging: rtl8712: use list_for_each in function _r8712_find_network
>   staging: rtl8712: use list_entry in function _free_network_queue
>   staging: rtl8712: use list_entry in function
>     r8712_get_oldest_wlan_network
>   staging: rtl8712: use list_entry in function update_scanned_network
>   staging: rtl8712: remove unnecessary NULL check
>   staging: rtl8712: use list_entry in function
>     r8712_select_and_join_from_scan
>
>  drivers/staging/rtl8712/rtl871x_mlme.c | 17 +++++++----------
>  1 file changed, 7 insertions(+), 10 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190330192742.65250-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

