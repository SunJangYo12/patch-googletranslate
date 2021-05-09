.class public Lcom/shun/hack/ServerThread;
.super Ljava/lang/Thread;
.source "ServerThread.java"


# instance fields
.field public context:Landroid/content/Context;

.field dataResult:Ljava/lang/String;

.field isResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shun/hack/ServerThread;->isResult:Z

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/shun/hack/ServerThread;->dataResult:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    .line 30
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    const/16 v0, 0x2382

    invoke-direct {v3, v0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 32
    const/4 v0, 0x1

    .line 33
    :goto_0
    if-eqz v0, :cond_f

    .line 34
    :try_start_1
    const-string v4, "serverSetsuna"

    const-string v5, "Menunggu koneksi diport 9090"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    const/4 v5, 0x0

    .line 38
    :try_start_2
    const-string v6, "serverSetsuna"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Terhubung dengan "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v7, 0x0

    .line 42
    const/16 v8, 0x3e8

    :try_start_3
    new-array v8, v8, [C

    .line 43
    const-string v9, ""

    .line 46
    :goto_1
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    invoke-virtual {v6, v8, v9, v10}, Ljava/io/BufferedReader;->read([CII)I

    move-result v9

    if-eqz v9, :cond_1

    .line 48
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v8, v11, v9}, Ljava/lang/String;-><init>([CII)V

    .line 50
    const-string v11, "serverSetsuna"

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-boolean v11, p0, Lcom/shun/hack/ServerThread;->isResult:Z

    if-eqz v11, :cond_0

    .line 53
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/shun/hack/ServerThread;->isResult:Z

    .line 54
    new-instance v11, Ljava/io/PrintWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 55
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/shun/hack/ServerThread;->dataResult:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    .line 58
    :cond_0
    const/4 v11, 0x3

    if-ne v9, v11, :cond_5

    .line 59
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    const-string v8, "<< close accept >>\n"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v0, v1

    .line 93
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v2, :cond_b

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 94
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_d

    :try_start_5
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 95
    :cond_3
    :goto_3
    :try_start_6
    const-string v4, "serverSetsuna"

    const-string v5, "Koneksi tutup"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 98
    :goto_4
    :try_start_7
    const-string v1, "serverSetsuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kesalahan koneksi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 101
    if-eqz v2, :cond_4

    .line 103
    :try_start_8
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 109
    :cond_4
    :goto_5
    return-void

    .line 65
    :cond_5
    const/4 v11, 0x2

    if-ne v9, v11, :cond_a

    .line 66
    :try_start_9
    sget-object v9, Lcom/shun/hack/MainFileManager;->getTransResultTelnet:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 67
    new-instance v9, Ljava/io/PrintWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 68
    const-string v10, "<< Please wait... >>\n"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_1

    .line 40
    :catch_1
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 93
    :catchall_0
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_6
    if-eqz v6, :cond_6

    if-eqz v1, :cond_c

    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_6
    :goto_7
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 36
    :catch_2
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 94
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_8
    if-eqz v4, :cond_7

    if-eqz v2, :cond_e

    :try_start_e
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_7
    :goto_9
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 101
    :catchall_2
    move-exception v0

    :goto_a
    if-eqz v3, :cond_8

    .line 103
    :try_start_10
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 108
    :cond_8
    :goto_b
    throw v0

    .line 71
    :cond_9
    :try_start_11
    new-instance v9, Ljava/io/PrintWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 72
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/shun/hack/MainFileManager;->getTransResultTelnet:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    const-string v10, ""

    sput-object v10, Lcom/shun/hack/MainFileManager;->getTransResultTelnet:Ljava/lang/String;

    .line 74
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 76
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v10, p0, Lcom/shun/hack/ServerThread;->context:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 93
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 83
    :cond_a
    new-instance v9, Ljava/io/PrintWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 84
    const-string v11, "<< Tranlate Process... Press Enter to result >>\n"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 87
    new-instance v9, Landroid/content/Intent;

    iget-object v11, p0, Lcom/shun/hack/ServerThread;->context:Landroid/content/Context;

    const-class v12, Lcom/shun/hack/MainFileManager;

    invoke-direct {v9, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const/high16 v11, 0x10000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const-string v11, "key_text_to_be_translated"

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v10, p0, Lcom/shun/hack/ServerThread;->context:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_1

    .line 93
    :catch_3
    move-exception v6

    :try_start_12
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 94
    :catchall_4
    move-exception v0

    goto/16 :goto_8

    .line 93
    :cond_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_2

    :catch_4
    move-exception v5

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto/16 :goto_7

    .line 94
    :catch_5
    move-exception v4

    :try_start_13
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    goto/16 :goto_3

    :catch_6
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_9

    .line 101
    :cond_f
    if-eqz v3, :cond_4

    .line 103
    :try_start_14
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    goto/16 :goto_5

    .line 104
    :catch_7
    move-exception v0

    .line 105
    const-string v1, "serverSetsuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tidak dapat menutup socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 104
    :catch_8
    move-exception v0

    .line 105
    const-string v1, "serverSetsuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tidak dapat menutup socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 104
    :catch_9
    move-exception v1

    .line 105
    const-string v2, "serverSetsuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tidak dapat menutup socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 101
    :catchall_5
    move-exception v0

    move-object v3, v2

    goto/16 :goto_a

    :catchall_6
    move-exception v0

    move-object v3, v2

    goto/16 :goto_a

    .line 97
    :catch_a
    move-exception v0

    goto/16 :goto_4
.end method

.method public sendResult(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shun/hack/ServerThread;->isResult:Z

    .line 24
    iput-object p1, p0, Lcom/shun/hack/ServerThread;->dataResult:Ljava/lang/String;

    .line 25
    return-void
.end method
