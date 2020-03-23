X-GM-THRID: 6807276568426053632
X-Received: by 2002:a05:6602:2251:: with SMTP id o17mr6756026ioo.101.1584942584776;
        Sun, 22 Mar 2020 22:49:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8787:: with SMTP id f7ls1993257ion.3.gmail; Sun, 22 Mar
 2020 22:49:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvjJXsE+y4oFkTzI+Yibiw5Sbee+uTHzMyhEM2UBk40Ge95u6gQLhLzHiUfv0NSAUvnlj43
X-Received: by 2002:a6b:5406:: with SMTP id i6mr17947939iob.188.1584942583678;
        Sun, 22 Mar 2020 22:49:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584942583; cv=none;
        d=google.com; s=arc-20160816;
        b=KHeTagjEK1lf/iQoByN1s9JabeKu1Ig57A0W0mUtmEXi+zfMlNgSDJMWXpGwznOY0O
         89WL2FdsUT4nvf8R9mprmBZsDHGlSSfZ3T5D9xj+PpCXsJVVRdmgKomoJRkrNixltSdX
         p9XvyQ/bm6rZxoex9V48eGyYBLPzUxOyKFmOLlWO65bEbxADuOyv3drXQANKBNSgl8VU
         QKgOhk/C4wxenGPvFxURYfbbxBh/8BSm3qeADV8bi8YYhNpB26FDJVOnKT7BFiAXnj0M
         hrG8zZr/auTyP8idzXmZ7q06pFf0cCzq0lxctfQMozvfn4lQdLM8irzGoTpimoR6oSlP
         0oLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=NYy9NuE8WBJf7SBWrwA6eIOGGrKEdaTbGfo4Hrff190=;
        b=iteA0gEcRbMw61PfpLwTeyivFWm4g7Wlf1yZJ//2Q1aTtcoA8hA0bZ0q5Il/Eo85Mb
         qfXBt3cKvALjkYmv6Q6Yasfs0FIJ6CQ/xv85ivNL4eAuhusO9iPm5pyjdci5d4fy+dxx
         zzOyxS4Pgbm7ss4rQjdYF1lxWVCW0c7U5N//P6a5oqxAB9Gun/jZ+yydfOvkfowTWS1s
         cgLgXipyOby3SPCkmxtHdDUP6OiSR7c/nCoVvx7LjSPU7LqCfKld3RtSs5iHlUhQR25K
         XDxqI4CaHMElPUhZldxnSrKszMJHVv21hTOFz+M2PFWof59bTP7MafFwqZwFQmuQDX+p
         ks7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qq0bW+GO;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id a3si980075iog.2.2020.03.22.22.49.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 22:49:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qq0bW+GO;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1029.google.com with SMTP id q16so5407783pje.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 22:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=NYy9NuE8WBJf7SBWrwA6eIOGGrKEdaTbGfo4Hrff190=;
        b=qq0bW+GOBcJtXxrMsCbmPHYRZoBe9+3eq33S2OtV1BirRG42PjF+Bll4gzfTL5IVJi
         HBm2D/T+HI3TWYwLSeq7VM15+XWneUPqcFRDPS1yqHBlqBxwqjK1K3JpSvLZFpLjrzAs
         HqvkKIRnCnqEiJDFBBfvpIAPs2g24pW1y+t2iDdqcYYZdbPNb+3rxIOZJM9UIFsG8uHE
         naAhTuiObYiqrUv2knz18/W0nFRctQRQiAUSAeAP9mi25KmhbYUe/yzwqEf8wGHSK5Yx
         D/uZ+8PUrz5Wj5mRi0fZrdS09oDLLQGUFrJImfWECLHYrXT5rPMmoI/PPnoA7wrJu/px
         GHKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NYy9NuE8WBJf7SBWrwA6eIOGGrKEdaTbGfo4Hrff190=;
        b=caL1r2+UxsYI+GofOw+SUYvKIwrUCepEmKqlu1uhHweAEVFOiUM1QkxcUv6fNNbV3w
         dcCPHYmeavBGkI+DqbZNluem1VyOQGXHnmQ7jEFIRrj47RpaE5hnOSkbziPlnZtDMj2u
         Ryyo5QARqMeL1c6dS+4g7lei+mRsWUVA4A+maPomdyPpb3k5sCbJzLoI91DZ/A8sC1Cx
         Ag0Iu3M4rh/hRw2fWoatULVDq5kravMP+x+c/uWkA4z7hierI1QnzcQKW64C/2DYlzji
         aMfI34C0wUSS3SBrCH37/SQF9XMX9N3+SNUrmwUrbCJ52cljFn3EOyWxsORGtmGa67EE
         55ag==
X-Gm-Message-State: ANhLgQ0SDWH5URZ5Gpwn3jX4RC/ByZThc4Nx6w+OabeHBRjdUfujzgYT
	Fin7ZYXdDxm2EhcM0QUs5mhCg0VIJOq76Q==
X-Received: by 2002:a17:902:8d89:: with SMTP id v9mr20492188plo.83.1584942582689;
        Sun, 22 Mar 2020 22:49:42 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.172.125])
        by smtp.googlemail.com with ESMTPSA id r17sm335142pgl.80.2020.03.22.22.49.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 22:49:41 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 0/3] Resolve indentation and space warnings generated by checkpatch
Date: Mon, 23 Mar 2020 11:18:33 +0530
Message-Id: <20200323054836.48816-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset adds space around operators and remove space after * in
pointer declarations and lastly removes uneccesary blank lines for the
same from the file hp100.c present under drivers/staging/hp/ directory.

Soumyajit Deb (3):
  staging: hp100: Add space around operator +
  staging: hp100: Remove space after * in pointer declarations
  staging: hp100: Remove uneccessary blank lines and resolve indentation
    issues

 drivers/staging/hp/hp100.c | 61 ++++++++++++++++----------------------
 1 file changed, 26 insertions(+), 35 deletions(-)

-- 
2.17.1


