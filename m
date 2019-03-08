X-GM-THRID: 6666132758820028416
X-Received: by 2002:a2e:9149:: with SMTP id q9mr1137960ljg.30.1552079980457;
        Fri, 08 Mar 2019 13:19:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:558f:: with SMTP id v15ls982622lfg.5.gmail; Fri, 08 Mar
 2019 13:19:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqxdw3/3UZQ6dM9PS9bsd9+VLJH8j21sK306W5ZjV2hvE7aO/ajRC6ka8DPpW58IUM8v4zNV
X-Received: by 2002:ac2:4149:: with SMTP id c9mr1281685lfi.12.1552079979576;
        Fri, 08 Mar 2019 13:19:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552079979; cv=none;
        d=google.com; s=arc-20160816;
        b=sd79hEPNuvqdWzEsql7/aR2ZNl108GYdunJgQLl8iMElN/6RTGOH4VRlcQkp0XFdO+
         lpdkhKOSkSH9ACs7YGGqAbSZArYtf4AwUHP6AJzKGNQM4kwFC2WYIkA4kC7RNDCH/VOK
         Kxbdp9gRVc8b4ErhxuBPALyjqSAM2f6kvpDByENnAWvxy0my70yZ018You1Tr+PUOVdG
         jCByuwROK2VsflParYrB6uOJg9qHtom+RlmApRkz1eZ3vkbq3TvKFTiH9euhb6rdw1Se
         pWr5slBXCht6oOaksipkFyvjbWADhdlknC17IOiI6UnORhwYWjuTMJsiF2CBYpxDXeHw
         NmUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date;
        bh=CxSDmu54qoHe1oijhHcFp7AxZBb7by0QNSus24+Wp90=;
        b=WQ18cIA1Aaxg1buTzRch1EQ8Bq0Fm4Ju5+y2h+INGtffHeCO77KAFeEUUTyha8o2pj
         2AOAOiSFk8ZGaKxiEWZ5DNXH7YiISJ+8iyiU3pU+b30yo4GA8yTHHqNOwJIsEuRdblQZ
         dc8EkU+dXQYuDOXMNN4wHCyeXf3Ycj669ivNwf65nvk7pzt5uXnKuQx+SS3FeoZS3olc
         R60nZxJ1FYm/+QTfknXF2XsBZai8F2BmWvOLQ/7GDUTOHrXdlMEO8YWWuS0YZo7k+ZEs
         mqtmyLen8FSX/vjMA5+Jsx8giDel8/1plREDWioO2znv0pix0WHVVjeI/MOneNMG77Oe
         rS2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v27si350735lje.0.2019.03.08.13.19.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 13:19:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,456,1544482800"; 
   d="scan'208";a="298618936"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2019 22:19:38 +0100
Date: Fri, 8 Mar 2019 22:19:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: Coccinelle project
Message-ID: <alpine.DEB.2.21.1903082215570.2518@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

If you are interested in working on the Coccinelle project, please check
my kernelnewbies page:

https://kernelnewbies.org/JuliaLawall

That should have everything you need to get started: a link to a tutorial,
links to some examples, and some exercises to do.  All of the exercises
currently are relevant to staging drivers, although I note that some of
them are currently relevant at only a few places in the code.

Please feel free to try Coccinelle once you have some accepted patches.

Let me know if you have any questions or run into any difficulties.

julia

