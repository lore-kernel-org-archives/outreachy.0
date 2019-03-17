X-GM-THRID: 6668974051336126464
X-Received: by 2002:a02:224c:: with SMTP id o73mr8766394jao.14.1552858443725;
        Sun, 17 Mar 2019 14:34:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9ad6:: with SMTP id x22ls3846465ion.4.gmail; Sun, 17 Mar
 2019 14:34:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYxHDGJjEjW7Vxgsg3AENcNO2CIAUFn0vfnD8STSDGk910VFFWiclXR0Q3rcZPfk1dCl93
X-Received: by 2002:a5e:8c1a:: with SMTP id n26mr9991434ioj.16.1552858442859;
        Sun, 17 Mar 2019 14:34:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552858442; cv=none;
        d=google.com; s=arc-20160816;
        b=cnHhWn0LqUwwWY+kdTI3sR73UHGC8hzzippWL5LXdpfANXWEKYYneupIksERuXwyXd
         bbUbgFbekpvhuP1trunFV/42pU+J++VGvnI99G6QM6lkhmsZeXWOyAbz8DVjQ9cpRBUm
         FF92StvJT7my5bDExysGLNkJkQrwWvHRzXbzbS0+1Rw093NoC/X67c2XzovR3ukwHrKH
         /JT/4Qasp8vQTs8OmI0bywTvUnLwX9F7ju8xg+ZgaOcNAcfDUBcWSIfJ3+SVEYy+84sB
         Iv/fHOUcLONBSA/HS+plPSzIbV5Grz+MaahVHTpQuOFJNbjU45tKnNqIi2+x+9jizXdT
         TvkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KxrX5TMwhHhLkgEPo31r4WNSaZiCUFeK8w8pH/gB9Lc=;
        b=gQ+tIyi2c4F9GjuSZWxN3IjVSjNtHo6C9g90HDonDrrqcYVixZRhs8fRD7t0B6ZmDY
         rPY8KEeqqlb+tAUzuYJynJg+2O1PmGbFzKrGIqLKe0PcNQ4jplRcgehjvgj0WOK9YZF/
         yIkP8K2LZ3pVKZhzTT8g1zVH9U8mGvxgMs7vQatmCelD4mvSJDVm95QHGIoJBy7GDII8
         HBd3lWLxj25qf/VF13x5qGP17EiXsg7+7dW9tiI36cmVfBdeX+t4O2rVP43AsF2bfQ/B
         oNhvAS3FZCvbzKpLRk9/In+ubFPF8zSeC98KGgYpdwKDxGIW/LBT6Aro4de6gIoZoe3Z
         VgZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mwo4oiz4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id 71si430461ita.0.2019.03.17.14.34.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 14:34:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mwo4oiz4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id e80so7649818ote.5
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 14:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KxrX5TMwhHhLkgEPo31r4WNSaZiCUFeK8w8pH/gB9Lc=;
        b=mwo4oiz4p/B3MUKNodedGfjG+iqwn5wZVaISlQrtcj2A4vvS5J1NJaGNyKr8rRkPJk
         owhzBDh65I+bUw5Km8hUzWKC07rBO44gYTEqECXlOvm6fTIl3cQcJMvy9xFRkpPaLyUV
         Ez4GI6DzxSCU6jOzgKmMq+MPJb21UXCNbBIyeNE911oczS+EFsoTDMqlMPcnF3/LhX6V
         hjwH1+8JDaot2VWAaNsUEdAJGnXUxDjYN7UnZXA/oRo2OYDMc9Mlp28C1fjmKjR4DBfe
         rzbU1SwC/gPQHDdJJM9yk1ZPGdJs6sUZQZyYjobrOPOQZa/bX++yuqNjNYSnCA8PDIhb
         SGjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KxrX5TMwhHhLkgEPo31r4WNSaZiCUFeK8w8pH/gB9Lc=;
        b=bdmxtO7g+BaWe+XGa2Fffzx8Mz7oLbRkbIi7PoQtUPNjeYxV1L33AXgMhk5/in6ceK
         bbZ8K5ru5soSdpHHI8d8qD/06/7M814EgpbUBZkJaVVfMNIs0sigwgHWTi18x/+hN3yz
         Vg6zJWMXVSrr9fIgrQ6KFm+TGcQ7VHCXU/NOKJASe6wL00wcZ4A0u3QNpUOfQhP8VfG7
         SUPMljgq6jlfX3O9WU6d6dXwhSv0MziZ+OpRTDrfevqLaiCXN7LjTpOvPqev6OYFzcSD
         pslgCoGyNH8Ow5Sj5JvlR+RuEQpg7NniTF1NTgp0ikdVDONTo8bxRJ9fkUcU04BmJJ+w
         RBrw==
X-Gm-Message-State: APjAAAUdGJIWwmgwL8/1E0/gdjoTZSQeqhUoj0ZdGWwiDMQ09FvdU6KX
	Mi2vpushq8nQ3cjSP4AaTpUwaMAC16U=
X-Received: by 2002:a9d:19a4:: with SMTP id k33mr8341456otk.269.1552858442518;
        Sun, 17 Mar 2019 14:34:02 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id g3sm3514898otb.66.2019.03.17.14.34.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 14:34:01 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 0/5] Issue suggested by Coccinelle using ret.cocci
Date: Sun, 17 Mar 2019 16:33:53 -0500
Message-Id: <cover.1552858206.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset does tasks as below:
1) Drop wrapper functions and change function names
2) Change type of variables and return type
3) Change values to standard error codes in functions
4) Replace NULL comparison with !
5) Add missing NULL check for kmalloc

All these patches are relevant to an issue suggested by Coccinelle using
ret.cocci.

Madhumitha Prabakaran (5):
  Staging: rtl8723bs: Remove wrapper functions and change function names
  Staging: rtl8723bs: Change type of variables and return type
  Staging: rtl8723bs:  Change values to standard error codes in
    functions
  Staging: rtl8723bs: Replace NULL comparison with !
  Staging: rtl8723bs: Add missing NULL check for kmalloc

---
Changes in v2 -

1) Modified commit log here
2) Dropped patch 4,5,6
3) Included patch 4 for replace NULL comparison with !
4) Merged patch 4 in patch 1, which is to remove unwanted function
declarations.
5) Merged patch 5 with patch 3, which is to replace error codes in
functions.
6) Merged patch 6 with patch 1, which is to remove extern and change
return type
7) Removed unnecessary local variable res in function rtw_init_evt_priv

 drivers/staging/rtl8723bs/core/rtw_cmd.c      | 37 ++++++-------------
 drivers/staging/rtl8723bs/include/cmd_osdep.h |  4 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  2 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  4 +-
 4 files changed, 15 insertions(+), 32 deletions(-)

-- 
2.17.1


