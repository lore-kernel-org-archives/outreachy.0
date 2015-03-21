X-GM-THRID: 9381605277696
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5ac3f70b1eabe1bb,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.133.69 with SMTP id pa5mr90312657obb.32.1426942271307;
        Sat, 21 Mar 2015 05:51:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.47 with SMTP id o44ls1910246qgd.16.gmail; Sat, 21 Mar
 2015 05:51:11 -0700 (PDT)
X-Received: by 10.236.2.35 with SMTP id 23mr90476101yhe.22.1426942271150;
        Sat, 21 Mar 2015 05:51:11 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id gb13si1175801pac.2.2015.03.21.05.51.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 05:51:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padcy3 with SMTP id cy3so137373957pad.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 05:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hhPZZWMz+XJ4UpUwQWGmCgqNise+xY+zx8KaqjO83h8=;
        b=cZR0+EL9j+Y2kkIfR2SeWaLCm/DoGJNSg9l+Rm2FedTqiQGFhTtvUQyFGnpDDaHiKJ
         kVjOwo5MMikvH3FHiH+tQb+I8utxegi5t+NX6BjFGYRdcflT9CJceziY+Vpb75xTDhv4
         JCzRCHiKt3Sa5Dk8nIaXW5Jn+ooAO5yV7WRcYczo/EdxVHTtE/CSKpe6lZ7dcjR50TDO
         qCsbCn6OxZLjr6Y6IBC3h1TmtHvj7oPVu8CuT0F+gfDGA7aL0zSzNQ0P4PS+OGCicchl
         Ogg+ZhKJL5BkcLss3OhnLpgsLtDWoKKp6zQFZ6BGLgJ8fArV/wCNYQHfGrNs58z5vUqD
         0s0Q==
X-Received: by 10.70.91.131 with SMTP id ce3mr186416882pdb.30.1426942271002;
        Sat, 21 Mar 2015 05:51:11 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.33.52])
        by mx.google.com with ESMTPSA id dl1sm11495578pdb.75.2015.03.21.05.51.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Mar 2015 05:51:10 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 0/2] Convert Macro into static inline function
Date: Sat, 21 Mar 2015 18:20:23 +0530
Message-Id: <1426942225-7634-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

Static inline function are generally preferred over macros because
static inline functions have types and return values. But in order
to change a macro into static inline function we have to check the
calling sites of the macro and ensuring that the types of arguments
in each case is same and also ensure that macro always returns same
type.

This check is done via following coccinelle script.

Since this macro does not return anything, so coccinelle script can be
simplified to avoid return type checks.


@initialize:python@
@@
list = []

@rule1@
type T;
T e;
expression list[n] es;
@@
class_export_rpc_inc(es,e,...);

@script:python rule2@
e << rule1.e;
T << rule1.T;
@@
list.append(T)

@finalize:python@
@@
possible = True
for t in list:
        if t != list[0]:
                possible = False

if possible:
        print 'This patch is possible. Argument type:', list[0]
else:
        print 'This patch is not possible'

Somya Anand (2):
  Staging: lustre: Convert macro class_export_rpc_inc into static inline
    function
  Staging: lustre: Convert macro class_export_rpc_dec into static inline
    function

 drivers/staging/lustre/lustre/include/obd_class.h | 26 +++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

-- 
1.9.1


