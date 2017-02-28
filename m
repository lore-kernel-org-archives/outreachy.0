X-GM-THRID: 6392087189982806016
X-Received: by 10.157.56.155 with SMTP id p27mr431020otc.124.1488273774179;
        Tue, 28 Feb 2017 01:22:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.68 with SMTP id y65ls267694iod.0.gmail; Tue, 28 Feb
 2017 01:22:53 -0800 (PST)
X-Received: by 10.99.121.199 with SMTP id u190mr396015pgc.103.1488273773602;
        Tue, 28 Feb 2017 01:22:53 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x229.google.com (mail-it0-x229.google.com. [2607:f8b0:4001:c0b::229])
        by gmr-mx.google.com with ESMTPS id f73si222985ita.1.2017.02.28.01.22.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 01:22:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) client-ip=2607:f8b0:4001:c0b::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x229.google.com with SMTP id y135so5475250itc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 01:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Rcb/wO5+uVOKGRd56FRR+I7QHW6sTBND+slYWO7k6t0=;
        b=KsKd81A0qKja72fua7+vV1bo+xiIiex+gqM5TNFasj2Vz8+0tG1QgDLvo3WGDWM5iT
         Wp7qgyNn1c/KAV0G8joJd2gyRmguqO0iFsEbso6+eOscu8GOMNaz2XBkKE3HtoBUiP3O
         +NjmkOLjr0PtjlswAucvfF6tY9whWKjwmpgfgAgoVEeLuVHoFSIsK8n4Bgp7ztPwC0Wa
         BYqMc2+P24xAq5JX3KcECqPXKy4c6hJYN/4U7hZhQSqLTLGaOyy9xd+GznwIh9+l6Gk8
         VQDdXKOVspBwc0TmyPHkyLtDuL1DdvIXJhJ1iVxe8yXvmi/vilrX0f20eKbjtV/vFrCW
         MHrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Rcb/wO5+uVOKGRd56FRR+I7QHW6sTBND+slYWO7k6t0=;
        b=YjVIFF2FbJQofcfrnVw3WjqW5WXwxRa8e4DyRZTbRBtjQNZ7JhK1slZhrYdW4PoV09
         v0bHjL0cw5r9hb/4hkxQOz8stUENNirOuylLQ/E4jIdPevHoYSZbIuN3fWZMklFhNg++
         zWjiX+KO7bmgcrpGSWzzfJyO9lmAHNoC+kpjOzVrqKkOSp0TxjPiMB+FZdTeltVwuj6e
         x+hc+ARp0G+TamOrnsnXPzDEL5RyQcZHRd48fuvHkghCoBuMhqAWcPdPVURMXhkzCACN
         OXfR3DB/1kKEo9GmDkZCRYugV4j+i+BLEiByksYUAQYaS/A1M0QD3Q9XGvb+SWBKffog
         dAEQ==
X-Gm-Message-State: AMke39lMF9+CMa26t+hDP6GOQ88tGQmI0UBHV9ctm9ixZ/AtI1fcvWq8EBrJHHn3js5cMPRHKMnX0sIQV1Uw8Q==
X-Received: by 10.36.0.130 with SMTP id 124mr19373986ita.89.1488273773288;
 Tue, 28 Feb 2017 01:22:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 28 Feb 2017 01:22:22 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 28 Feb 2017 14:52:22 +0530
Message-ID: <CAOCi2DEcHAT-kGakEWfuO7xmYQ5OSK-MTxVmuLfPcAwkapx-yg@mail.gmail.com>
Subject: Coccinelle Challenge problem 6
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11402d9695e6ce054993bdb0

--001a11402d9695e6ce054993bdb0
Content-Type: text/plain; charset=UTF-8

Hi,

Here's my Coccinelle script for problem 6.

@a@
expression pos, n, mem;
type t;
identifier var;
iterator name list_for_each_entry, list_for_each;
@@

- list_for_each(pos, n)
+ list_for_each_entry(var, n, mem)
  {
  ... when != var
- var = list_entry(pos, t, mem);
  ... when != pos
  }

Thanks,
Gargi

--001a11402d9695e6ce054993bdb0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Here&#39;s my Coccinelle script for=
 problem 6.</div><div><br></div><div><div>@a@</div><div>expression pos, n, =
mem;</div><div>type t;</div><div>identifier var;</div><div>iterator name li=
st_for_each_entry, list_for_each;</div><div>@@</div><div><br></div><div>- l=
ist_for_each(pos, n)</div><div>+ list_for_each_entry(var, n, mem)</div><div=
>=C2=A0 {</div><div>=C2=A0 ... when !=3D var</div><div>- var =3D list_entry=
(pos, t, mem);</div><div>=C2=A0 ... when !=3D pos</div><div>=C2=A0 }</div><=
/div><div><br></div><div>Thanks,</div><div>Gargi</div></div>

--001a11402d9695e6ce054993bdb0--

