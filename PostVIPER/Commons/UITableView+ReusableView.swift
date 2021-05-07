import UIKit

extension UITableView {
    func register<GenericCell: UITableViewCell>(_: GenericCell.Type) where GenericCell: ReusableView {
        register(GenericCell.self, forCellReuseIdentifier: GenericCell.defaultReuseIdentifier)
    }
    
    func register<GenericCell: UITableViewCell>(_: GenericCell.Type) where GenericCell: ReusableView, GenericCell: NibLoadableView {
        let bundle = Bundle(for: GenericCell.self)
        let nib = UINib(nibName: GenericCell.nibName, bundle: bundle)
        
        register(nib, forCellReuseIdentifier: GenericCell.defaultReuseIdentifier)
    }
    
    func dequeueReusableCell<GenericCell: UITableViewCell>(_: GenericCell.Type) -> GenericCell where GenericCell: ReusableView {
        guard let cell = dequeueReusableCell(withIdentifier: GenericCell.defaultReuseIdentifier) as? GenericCell else {
            fatalError("Could not dequeue cell with identifier: \(GenericCell.defaultReuseIdentifier)")
        }
        
        return cell
    }
    
    func dequeueReusableCell<GenericCell: UITableViewCell>(_: GenericCell.Type, for indexPath: IndexPath) -> GenericCell where GenericCell: ReusableView {
        guard let cell = dequeueReusableCell(withIdentifier: GenericCell.defaultReuseIdentifier, for: indexPath) as? GenericCell else {
            fatalError("Could not dequeue cell with identifier: \(GenericCell.defaultReuseIdentifier)")
        }
        
        return cell
    }
    
    func dequeueReusableCell<GenericCell: UITableViewCell>(_: GenericCell.Type, for row: Int) -> GenericCell where GenericCell: ReusableView {
        return dequeueReusableCell(GenericCell.self, for: IndexPath(row: row, section: 0))
    }
}
