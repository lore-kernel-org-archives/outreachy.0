X-GM-THRID: 6524677684399702016
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.31.194.201 with SMTP id s192mr282391vkf.77.1519153335774;
        Tue, 20 Feb 2018 11:02:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.16.66 with SMTP id g63ls6168228vki.4.gmail; Tue, 20 Feb
 2018 11:02:14 -0800 (PST)
X-Google-Smtp-Source: AH8x224my51D+EiGIhFiELiUEKGIs96Bu8y1I+V7cs0FAlbTdE22jOQsu4+zLRFICg6zjODmIo7D
X-Received: by 10.31.124.4 with SMTP id x4mr275001vkc.113.1519153334218;
        Tue, 20 Feb 2018 11:02:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519153334; cv=none;
        d=google.com; s=arc-20160816;
        b=CZQomezYMYcEM7OBYH6v2hg85Pl6CWqte2fX5tIajdKpfHKoEaMqGBdARats/plsQT
         hBdyNF4HylCqie4MxUPMg18tLQ6TWf2qVmtCdfQKpJnrgHt9UeCH0tbUfyo4VNSfsIxa
         NdIlm8cRi+66k3qSIElB8b8AzxReL/EMbxOC6+y7KfTsj9JlPxdQVKD3bjBHqz3Cv+Nx
         5VJuuO5Jb8KdsiwGqCRQSaDcVm4t6gqdGMNYrRgpHaTvjT4A5WuCtH5G17bg4v5DfW5R
         h6qt0oHELcWbcWBDwI6hY992et0IOvdGyDyWXzy6+Q2i+c0EBgSE1q15zyJ6lHEt8WJv
         c+Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=RgiYPgpU5w/yvKPbbf8fQIJpz3ZDmCU8iF1lxM+2CLg=;
        b=JcGTI2LRNODvxzlNwOJkJKfgn0U7OEjjIDrDYjDJMU+YVmwqI/APld66K2xY8cfsiR
         tC2eXlkm/PtoRdxA6JcQoUXoEfqnYGu7bbpSQZBDSVZeXT3BheVFrm5fgzfizChDXOi6
         KP2oFh8SrA3nrkh0zFUtVVQmVmVX5B7exFLdhZHRfYnaA3AiICiatpDmZmDJgnWrgwGw
         kj/04xk82XGlOenzWHZpTbH9AjUeQjZbOPAW/cr9YJU3b92NY/PF5AqVih55IkHZFyJz
         mwJ/+7bMHENHE8ks0WFBo9kNYKBZ4lF61GnQbkL3gQ9j+BWgvJyqRyFMp8H+WJLWxcEZ
         cn0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=gFhJ83CY;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::234 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x234.google.com (mail-pg0-x234.google.com. [2607:f8b0:400e:c05::234])
        by gmr-mx.google.com with ESMTPS id b32si887007uad.4.2018.02.20.11.02.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 11:02:13 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::234 as permitted sender) client-ip=2607:f8b0:400e:c05::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=gFhJ83CY;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::234 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x234.google.com with SMTP id w17so7473148pgv.6
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Feb 2018 11:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RgiYPgpU5w/yvKPbbf8fQIJpz3ZDmCU8iF1lxM+2CLg=;
        b=gFhJ83CYzLj6D78rFSdT3NKGhKwPViyMWsoyjUh5MgULo1Mp5RDuL8dWPVhvokf2PV
         ifd8locJsRLAexdjvbhh0EICWEzQL5tdWr+rgLXCDxZ+IEjP0EUnv0Dh49QOj+5h9bOS
         FFBBG9A416JmgvUFMjo/wRDERXCuuc6FJ1MhI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RgiYPgpU5w/yvKPbbf8fQIJpz3ZDmCU8iF1lxM+2CLg=;
        b=qFBOluQ2S5QVRP7e9gecT3i1lNItBePw1cQCVRsKk+w9vIKa7r6nCPX5OVVJIZdChh
         me4yTb5B2jYAjoflTIOX20lidpPe6eJw4tbHpZss9+npj70Q/esUzUd+S5QL1QHNnAIa
         trmVbQOjwN5yhMnc/nblnHKGPyUnBgdZr+ycMu1fSIIYpV/MEdbgqZ2jWF6ScIpbgQGL
         hJPUVpYM65YXyIoeYHCQnOzHojbbLukzT5HZ5bv37y3Jr9osU0Qo3m2XlnCAzQ9AK7zb
         zVlY0+dzJCrDIUzYEo1MlhWVQsVQyDm2e2VynYViDZeFf7uQbxTgdFUFec9nUXgkvm4l
         Tn3w==
X-Gm-Message-State: APf1xPAFFtFkSErj/ciNwz4zPPJ/aUm4skSMcfDCpctE0XSycxSaf2ib
	SaTJxnCuqjZGmF6EiA2560/7NXXi
X-Received: by 10.98.31.79 with SMTP id f76mr627527pff.60.1519153332595;
        Tue, 20 Feb 2018 11:02:12 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from DESKTOP-3NPFG8T.localdomain ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id f9sm10183388pfj.71.2018.02.20.11.02.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Feb 2018 11:02:11 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
X-Google-Original-From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [SETUP] Difficulty with git email
Date: Wed, 21 Feb 2018 00:32:07 +0530
Message-Id: <1519153327-379-1-git-send-email-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.20.1802201749541.3377@hadrien>
References: <alpine.DEB.2.20.1802201749541.3377@hadrien>

From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

I managed to get it working on this email address, so I'll send in my first patch now. Thank you for your help!

Regards,
Nishka Dasgupta

