#ifndef TKITEM_H
#define TKITEM_H

#include <QtQuick/QQuickPaintedItem>

class TkItem : public QQuickPaintedItem
{
    Q_OBJECT
    QML_ELEMENT
    Q_DISABLE_COPY(TkItem)
public:
    explicit TkItem(QQuickItem *parent = nullptr);
    void paint(QPainter *painter) override;
    ~TkItem() override;
};

#endif // TKITEM_H
