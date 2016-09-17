X-GM-THRID: 6331367945282781184
X-Received: by 10.66.79.199 with SMTP id l7mr380950pax.42.1474136473845;
        Sat, 17 Sep 2016 11:21:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.36 with SMTP id q33ls7292438otb.33.gmail; Sat, 17 Sep
 2016 11:21:13 -0700 (PDT)
X-Received: by 10.200.41.47 with SMTP id y44mr12216229qty.27.1474136473536;
        Sat, 17 Sep 2016 11:21:13 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id u139si78713ywe.5.2016.09.17.11.21.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 11:21:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x230.google.com with SMTP id w204so114541868qka.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 11:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=kk1EItTeXiUlpN221ZICGHzMZ/jWb7ErF7x5dWhDIaY=;
        b=uTJh0kZRpNukNDQ8m+ygiPI4/lrsLI8bhkwzt9tNxf15qFd74IB6FxNznmGDPbg6SI
         iXWcxYTQPhl97A1RnqE+XhpMnRkLXXR8+92/cIcvxOLgA4K+B6OK4hQiPfyY6vtRuPFe
         PhtHoOo9mvlP1BvXInezP7yW1ANZIefFYRIyKP1L+R0D+lzdGsTV1iWdQjTkF43HHWhG
         G2oB3Vfj21T4oIp4RKp5HjmyMpZVZXfFOYj6YcRuNhD/ppu/ZS6O7Nq9zsxcszXNX2ug
         sCO0vcTi3xs0PtLMHNm3/2WHag00686RYQCF9tHiSNGm1I+0FXC5HiRaidNAx4brS+8+
         Or0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kk1EItTeXiUlpN221ZICGHzMZ/jWb7ErF7x5dWhDIaY=;
        b=UCGtkK8sb6DD1p7qih1jwjjgXhbl7EY57NYli6NL89v32Dju63GfhBnou0pBlvAX+3
         fD7BnxuJpTUL+zwrhG8tptsHunS5qqddCuPQ3SxTrBCTusEJdws5jir2GYFRzHayCCYi
         2cq5UdEMuwI/U9q1LIauS+3w1zCBLfTINZFFpx+PV4Yp1dWy/TpipBx9kuZV78Y3HeLZ
         qFS+i7fipUV6R8YTIXfpwiCKNk17d+28SJnDEldJ3JISASej6S1mZIttyL/NedG2JP6k
         BGlfwiRIryGyKarOz0il0Xv2r73INOIaP+uESTv7ycIOIVuZyTa2S3Y4RuBCS4bowMr7
         7PpQ==
X-Gm-Message-State: AE9vXwMatPZZObixGx/bFFvh/mddYBtLrzdV/c+wYhsg4K/mTeo+bDB1+gQ6OFUffvZF1hmuIV3CR62StpQ41Q==
X-Received: by 10.55.181.195 with SMTP id e186mr21463750qkf.153.1474136473252;
 Sat, 17 Sep 2016 11:21:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Sat, 17 Sep 2016 11:20:42 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 17 Sep 2016 23:50:42 +0530
Message-ID: <CAOCi2DFRtAPuzNce3oEQGcu6yO388OE=fC3SBOS7ywVuebUV5w@mail.gmail.com>
Subject: Using Coccinelle to detect bugs
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=94eb2c06afa0d6cae6053cb82437

--94eb2c06afa0d6cae6053cb82437
Content-Type: text/plain; charset=UTF-8

Hi all!

I have been trying to use Coccinelle scripts but I am getting the error :
Fatal error: exception Failure("False should not be in the final result.
Perhaps your rule doesn't contain any +/-/* code, or you have a failed
dependency.  If the problem is not clear, try the option
--debug-parse-cocci.").

Steps I followed:
1. sudo apt-get install coccinelle
2.  make coccicheck MODE=report
3. run  spatch --sp-file scripts/coccinelle/misc/array_siz.cocci --dir
drivers/staging/*

After which I get the error:
Fatal error: exception Failure("False should not be in the final result.
Perhaps your rule doesn't contain any +/-/* code, or you have a failed
dependency.  If the problem is not clear, try the option
--debug-parse-cocci.").

I would also like to ask that a lot of script mentioned in coccinellery are
not present in scripts/coccinelle. So if I want to run a scipt from
coccinellery, do I clone the coccinellery repo as well?

Thanks!
Gargi

--94eb2c06afa0d6cae6053cb82437
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all!<div><br></div><div>I have been trying to use Cocci=
nelle scripts but I am getting the error :</div><div>Fatal error: exception=
 Failure(&quot;False should not be in the final result.=C2=A0 Perhaps your =
rule doesn&#39;t contain any +/-/* code, or you have a failed dependency.=
=C2=A0 If the problem is not clear, try the option --debug-parse-cocci.&quo=
t;).<br></div><div><br></div><div>Steps I followed:</div><div>1. sudo apt-g=
et install coccinelle</div><div>2. =C2=A0make coccicheck MODE=3Dreport</div=
><div>3. run=C2=A0=C2=A0spatch --sp-file scripts/coccinelle/misc/array_<wbr=
>siz.cocci --dir drivers/staging/*</div><div><br></div><div>After which I g=
et the error:=C2=A0</div><div>Fatal error: exception Failure(&quot;False sh=
ould not be in the final result.=C2=A0 Perhaps your rule doesn&#39;t contai=
n any +/-/* code, or you have a failed dependency.=C2=A0 If the problem is =
not clear, try the option --debug-parse-cocci.&quot;).<br></div><div><br></=
div><div>I would also like to ask that a lot of script mentioned in coccine=
llery are not present in scripts/coccinelle. So if I want to run a scipt fr=
om coccinellery, do I clone the coccinellery repo as well?</div><div><br></=
div><div>Thanks!</div><div>Gargi</div><div><br></div></div>

--94eb2c06afa0d6cae6053cb82437--

