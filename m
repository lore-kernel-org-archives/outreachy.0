X-GM-THRID: 6394100888766513152
X-Received: by 10.107.47.193 with SMTP id v62mr1642508iov.90.1488800483042;
        Mon, 06 Mar 2017 03:41:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.71 with SMTP id l65ls14301069otl.41.gmail; Mon, 06 Mar
 2017 03:41:22 -0800 (PST)
X-Received: by 10.129.69.37 with SMTP id s37mr6797776ywa.147.1488800482610;
        Mon, 06 Mar 2017 03:41:22 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x22d.google.com (mail-it0-x22d.google.com. [2607:f8b0:4001:c0b::22d])
        by gmr-mx.google.com with ESMTPS id d20si1679200itc.1.2017.03.06.03.41.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 03:41:22 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::22d as permitted sender) client-ip=2607:f8b0:4001:c0b::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::22d as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22d.google.com with SMTP id 203so47162708ith.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 03:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HPdPCvAomkT/gzU113zWrSyb0EyOhgZ5EGau1GKovmw=;
        b=LHcQaJ7hYADZivhD5s/6HHHftaUdJwlByxfE85vMTXwsrhkCrEuxfaxDZyeRo7X0Us
         7FSKLvZJJkWYd/vCRREjhjGkqFnG/ZEePKDcGQjNbCn4BjANKMY4SGJyby1M2PktJpcZ
         nVqrmNY092UiLQ7AfTjrRDN1WhsKr/9uvDeusjkGznrmV1RjkG3oJUhIfV94XOqoqHF5
         hkPOz8wzR0tBwSjdCc50jYDav0XmQztOL3/AlbuOGh/yjJVWTFtAwKblit/wYsNtX47n
         1Cp0ICVzslzpq15cUNOclY5c7DjzVu1wp8+FMgIPhOCdC9lJ3cH5EVLdb+AOwpVRgUb4
         tXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HPdPCvAomkT/gzU113zWrSyb0EyOhgZ5EGau1GKovmw=;
        b=cFQtyULZ4ZkufwZ2rXTTZJztay2Wq63Fj/sg9pmPZKgBkmtdIUFdo3fpRykTCtbF5x
         RNn99UCelCpQHeQToV1/EJeUKgUwCG4tNq/eo8EopyoMuVwSACSM5cqH/LVD/DY3Rpno
         eHEla0VE9EG7BxrRLLeqdYpuwQR5Fo4mRuiWslg/dV0mnMAGn2LQf9H2q2M9q5FOlnp5
         VGBVOcYt+byn9OR0aIDDFOdRn4JCD91W5RZnwybp8n/zwn5f9WvvfgDUIqgtgljkrEx9
         KBcsAP3ZG7rMvpHwi8k3kXCtKlUjRFSR1fk6HQmFiuuWNF6izSoi/6cxlw92cr8loiqd
         b7kg==
X-Gm-Message-State: AMke39ky8AQsDrfltGAdCMWpAdBXOXF6eJ1OAM9v+D/d1wNiOWc6o28Ym2iYW8mGx9Ck5/Vm6lCkQHs56CiowA==
X-Received: by 10.36.146.134 with SMTP id l128mr13690395itd.19.1488800482379;
 Mon, 06 Mar 2017 03:41:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Mon, 6 Mar 2017 03:41:21 -0800 (PST)
In-Reply-To: <ae948b29-c3d0-40d3-94a0-31df90500e76@googlegroups.com>
References: <20170305193701.20390-1-diaconita.tamara@gmail.com> <ae948b29-c3d0-40d3-94a0-31df90500e76@googlegroups.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 6 Mar 2017 13:41:21 +0200
Message-ID: <CAEnQRZA65EgX8BM50bLHs4nmhpweQ2g-kCbEmmsjR2ott1FZFA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 3/3] staging:speakup:keyhelp.c:
 Remove unnecessary else
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, w.d.hubbs@gmail.com, 
	chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tamara Diaconita <diaconita.tamara@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 6, 2017 at 1:29 PM, Tamara Diaconita
<diaconitatamara@gmail.com> wrote:
> Did I do something wrong? In this case I see that the if statement finish
> with a return.

Hi Tamara,

Firstly, use bottom posting. Meaning that your reply should be under the te=
xt
you are replying to. Like this one.

Secondly, after cosmetic patches the logic of the code shouldn't be changed=
.
In your case it is changed.

The code looks like this:

if (cond1) {
/* code1 */
} else if (cond2) {
/* code2 */
} else if(cond3) {
/*code3 */
} else {
/* code4 */
}

/* code 5 */
Your code removes the last "else" which would be fine if all other
code path would end with a return.

But if you look into the code there is a path that doesn't end with a retur=
n [1]
and thus you break the initial logic.

The path that could end up without a return is this:

=C2=BB       } else if (type =3D=3D KT_CUR) {
=C2=BB       =C2=BB       if (ch =3D=3D 0
=C2=BB       =C2=BB           && (MSG_FUNCNAMES_START + cur_item + 1) <=3D
=C2=BB       =C2=BB           MSG_FUNCNAMES_END)
=C2=BB       =C2=BB       =C2=BB       cur_item++;
=C2=BB       =C2=BB       else if (ch =3D=3D 3 && cur_item > 0)
=C2=BB       =C2=BB       =C2=BB       cur_item--;
=C2=BB       =C2=BB       else
=C2=BB       =C2=BB       =C2=BB       return -1;


Hope this helps.

thanks,
Daniel.

